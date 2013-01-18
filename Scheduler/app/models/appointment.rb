class Appointment < ActiveRecord::Base
  attr_accessible :end_time, :instructor, :start_time
end
