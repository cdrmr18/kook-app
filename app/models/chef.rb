class Chef < ApplicationRecord
  belongs_to :user
  has_many :chef_reviews
  has_many :recipes
end
