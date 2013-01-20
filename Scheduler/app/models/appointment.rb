class Appointment < ActiveRecord::Base
  attr_accessible :end_time, :instructor, :start_time


  def duration
    @end_time - @start_time
  end


end
