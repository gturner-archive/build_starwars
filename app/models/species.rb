class Species < ApplicationRecord
  has_many :classifyings
  has_many :movies, through: :classifyings
end
