class Vehicle < ApplicationRecord
  has_many :drivings
  has_many :movies, through: :drivings
end
