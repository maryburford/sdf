class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  has_many :received_messages,
           :class_name => 'Message',
           :foreign_key => 'receiver_id'
        #   :conditions => ["messages.receiver_deleted = ?", false]
  has_many :sent_messages,
           :class_name => 'Message',
           :foreign_key => 'sender_id'
end
