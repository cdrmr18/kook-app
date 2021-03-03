class ChefReview < ApplicationRecord
  belongs_to :booking
  belongs_to :chef
  validates :rating, inclusion: { in: [1,2,3,4,5], allow_nil: false }
end
