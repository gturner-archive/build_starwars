class Starship < ApplicationRecord
  has_many :flyings
  has_many :movies, through: :flyings
end
