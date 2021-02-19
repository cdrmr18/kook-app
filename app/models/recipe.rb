class Recipe < ApplicationRecord
  belongs_to :chef
  has_many :bookings
  has_many :recipe_reviews, through :bookings
  has_many_attached :photos

  validates :name, presence: true
  validates :description, presence: true
  validates :ingredients, presence: true
  validates :cuisine, presence: true
  validates :cook_time, presence: true
end
