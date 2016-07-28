class Movie < ApplicationRecord
  validates :writer, presence: true
  has_many :settings
  has_many :planets, through: :settings
  has_many :nameings
  has_many :films, through: :nameings
  has_many :castings
  has_many :people, through: :castings
  has_many :flyings
  has_many :starships, through: :flyings
  has_many :drivings
  has_many :vehicles, through: :drivings
  has_many :classifyings
  has_many :species, through: :classifyings
end
