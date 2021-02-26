class Measurement < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  validates :description, presence: true
  validates :recipe, :uniqueness => {:scope => :ingredient}
end
