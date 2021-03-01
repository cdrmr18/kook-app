class RecipeReview < ApplicationRecord
  belongs_to :booking
  validates :rating, inclusion: { in: 1..5, allow_nil: false }
end
