class RecipeReview < ApplicationRecord
  belongs_to :booking
  # validat for rating not working
  # validates :rating, inclusion: { in: 1..5, allow_nil: false }
end
