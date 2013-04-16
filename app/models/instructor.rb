class Instructor < ActiveRecord::Base
  attr_accessible :bio, :name, :specialties

  has_many :appointments
end
