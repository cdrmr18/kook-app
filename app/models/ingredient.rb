class Ingredient < ApplicationRecord
  has_many :measurements
  validates :name, presence: true, uniqueness: true
end
