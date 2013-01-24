# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

instructor = Instructor.create :name => "Lasse", :bio => "I am a great instructor", :specialties => "Coding Squats"
Appointment.create :instructor_id => instructor.id, :start_time => "9 am", :end_time => "10 am"