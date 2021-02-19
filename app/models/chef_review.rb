class ChefReview < ApplicationRecord
  belongs_to :chef
  belongs_to :booking
end
