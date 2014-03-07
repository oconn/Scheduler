class User < ActiveRecord::Base

  has_many :created_events, class_name: "Event"
  has_many :attended_events, class_name: "EventAttendance"


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  
end
