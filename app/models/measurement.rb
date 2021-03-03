class Measurement < ApplicationRecord
  belongs_to :recipe

  validates :description, presence: false
  validates :ingredient, presence: true
end
