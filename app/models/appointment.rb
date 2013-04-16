class Appointment < ActiveRecord::Base
  attr_accessible :duration, :instructor_id, :start_time
  belongs_to :instructor
  has_one :specialty

  def end_time
    start_time + duration.minutes
  end


end
