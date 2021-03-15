class Chef < ApplicationRecord
  belongs_to :user
  has_many :recipes, dependent: :destroy
  has_many :bookings, through: :recipes
  has_many :chef_reviews, through: :bookings

  validates :cuisine, presence: true

  # once chef information is populated this search can be implemented
  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :cuisine ],
    associated_against: {
      user: [ :first_name, :last_name ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
