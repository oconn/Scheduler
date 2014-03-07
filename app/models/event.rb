class Event < ActiveRecord::Base
  belongs_to :creator, class_name: "User", foreign_key: :user_id
  has_many :event_attendances
  has_many :attendants, through: :event_attendances, source: :user

  def spots_left
    self.max_attendees - EventAttendance.where(event_id: self.id).count
  end

end
