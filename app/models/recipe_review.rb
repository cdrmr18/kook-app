class RecipeReview < ApplicationRecord
  belongs_to :booking
  belongs_to :recipe
  validates :rating, inclusion: { in: 1..5, allow_nil: false }
end
