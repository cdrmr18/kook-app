class Measurement < ApplicationRecord
  belongs_to :recipe

  validates :description, presence: true
  validates :ingredient, presence: true
end
