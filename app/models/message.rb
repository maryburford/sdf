class Message < ActiveRecord::Base

  belongs_to :sender,
    :class_name => 'User',
    :primary_key => 'user_id',
    :foreign_key => 'sender_id'

  belongs_to :receiver,
    :class_name => 'User',
    :primary_key => 'user_id',
    :foreign_key => 'receiver_id'

   #attr_accessor :subject, :body, :sender_id, :receiver_id, :read_at, :deleted
   #validates_presence_of :subject, :message => "Please enter message title"

   def mark_message_deleted(id)
     self.deleted = true if self.id=id
   end

   # Read message and if it is read by recepient then mark it is read
   def self.readingmessage(id, reader)
     message = find(id, :conditions => ["sender_id = ? OR receiver_id = ?", reader, reader])
     if message.read_at.nil? && (message.receiver.sender_id==reader)
       message.read_at = Time.now
       message.save!
     end
     message
   end

  # Based on if a message has been read by it's recepient returns true or false.
   def read?
     self.read_at.nil? ? false : true
   end
end