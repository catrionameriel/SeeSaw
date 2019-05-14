class Film < ApplicationRecord
  has_many :film_genres, dependent: :nullify
  has_many :genres, through: :film_genres
  validates :title, :genre, presence: true
  validates :seen, inclusion: [true, false]
end
