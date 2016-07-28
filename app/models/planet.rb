class Planet < ApplicationRecord
  has_many :settings
  has_many :movies, through: :settings
end
