class Movie < ApplicationRecord
  has_many :settings
  has_many :planets, through: :settings
end
