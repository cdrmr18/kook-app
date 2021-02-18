class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_one :chat
  has_many :chef_reviews
  has_many :recipe_reviews
end
