class Chef < ApplicationRecord
  belongs_to :user
  has_many :bookings, through: :recipes
  has_many :chef_reviews
  has_many :recipes

  validates :cuisine, presence: true



  # once chef information is populated this search can be implemented
  include PgSearch::Model
  multisearchable against: [:first_name, :last_name]




end
