class Appointment < ActiveRecord::Base
  attr_accessible :duration, :instructor_id, :start_time
  belongs_to :instructor


  def end_time
    start_time + duration.minutes
  end


end
