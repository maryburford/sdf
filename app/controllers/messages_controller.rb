class MessagesController < ApplicationController

  before_filter :set_user
  before_action :authenticate_user!

  def new
    @message = Message.new


    if params[:reply_to]
      @reply_to_message = Message.find(params[:reply_to])
      @reply_to = User.find(@reply_to_message.sender_id)

      unless @reply_to.nil?
        @message.receiver_id = @reply_to.id
        @message.subject = "Re: #{@reply_to_message.subject}"
        @message.body = "\n\n*Original message*\n #{@reply_to_message.body}"
      end
    end
  end

  def create
    #@message = Message.new(params[:message])
    @message = Message.new(message_params)

    @message.sender_id = current_user.id

    if @message.save
      flash[:notice] = "Your message has been sent!"
      redirect_to messages_path(:mailbox=>:inbox)
    else
      render :action => :new
    end
  end


  def index
   if params[:mailbox] == "sent"
     @messages = current_user.sent_messages
   elsif params[:mailbox] == "inbox"
     @messages = current_user.received_messages
   #elsif params[:mailbox] == "archieved"
    # @messages = @user.archived_messages
   end
  end

  def show
    @message = Message.readingmessage(params[:id],current_user.user_id)
  end

  def delete
    if params[:delete]
      Message.destroy(params[:id])
      flash[:notice] = "Messages deleted"
    end
    redirect_to user_messages_path(current_user, @messages)
  end

  private
  def set_user
   @user = current_user
  end


  def message_params
    params.require(:message).permit(:body, :subject, :sender_id, :receiver_id, :read_at, :deleted, :reservation_id)
  end


end
