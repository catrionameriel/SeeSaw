class Film < ApplicationRecord
  has_many :film_genres, dependent: :nullify
  has_many :genres, through: :film_genres
  validates :title, :seen, presence: true
end
