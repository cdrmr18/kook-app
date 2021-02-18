class Chef < ApplicationRecord
  belongs_to :user
  has_many :chef_reviews
end
