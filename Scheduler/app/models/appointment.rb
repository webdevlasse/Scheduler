class Appointment < ActiveRecord::Base
  attr_accessible :end_time, :instructor_id, :start_time
  belongs_to :instructor


  def duration
    @end_time - @start_time
  end


end
