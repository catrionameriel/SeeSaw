class Genre < ApplicationRecord
  has_many :film_genres, dependent: :nullify
  has_many :films, through: :film_genres
  validates :name, presence: true
end
