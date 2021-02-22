class ChefReview < ApplicationRecord
  belongs_to :booking
  # this rating validation is not working
  # validates :rating, inclusion: { in: [1,2,3,4,5], allow_nil: false }
end
