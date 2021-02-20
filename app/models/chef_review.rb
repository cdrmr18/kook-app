class ChefReview < ApplicationRecord
  belongs_to :booking

  validates :rating, inclusion: { in: 1..5 }, numericality: { only_integer: true }
  validates :content, presence: true
end
