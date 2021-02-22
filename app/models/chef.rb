class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings, through: :recipes
  has_many :chef_reviews, through: :bookings
  has_many :recipes

  validates :cuisine, presence: true



  include PgSearch::Model
    multisearchable against: [:user, :bookings]
  



end
