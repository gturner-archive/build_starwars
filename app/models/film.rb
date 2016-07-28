class Film < ApplicationRecord
  has_many :nameings
  has_many :movies, through: :nameings
end
