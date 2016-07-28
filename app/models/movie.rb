class Movie < ApplicationRecord
  has_many :settings
  has_many :planets, through: :settings
  has_many :nameings
  has_many :films, through: :nameings
  has_many :castings
  has_many :people, through: :castings
end
