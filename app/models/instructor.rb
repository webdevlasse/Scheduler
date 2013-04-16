class Instructor < ActiveRecord::Base
  attr_accessible :bio, :name, :specialties

  has_many :appointments
  has_many :specialties
end
