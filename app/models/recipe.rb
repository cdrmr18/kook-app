class Recipe < ApplicationRecord
  belongs_to :chef
  has_many :bookings
  has_many :recipe_reviews
  has_many_attached :photos
end
