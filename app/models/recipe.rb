class Recipe < ApplicationRecord
  belongs_to :chef
  has_many :bookings
  has_many :recipe_reviews, through: :bookings
  has_many :measurements, dependent: :destroy
  has_many :ingredients, through: :measurements
  has_one_attached :photo

  validates :name, presence: true, uniqueness: true
  validates :description, presence: true
  validates :cuisine, presence: true
  validates :cook_time, presence: true
  validates :photo, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }

  monetize :price_cents

  include PgSearch::Model
    multisearchable against: [:name, :cuisine, :description]


  pg_search_scope :search_by_cuisine_and_name,
    against: [ :cuisine, :name, :description ],
    using: {
      tsearch: { prefix: true }
    }

    # def unavailable_dates
    #   recipes.pluck(:start_date, :end_date).map do |range|
    #     { from: range[0], to: range[1] }
    #   end
    # end
end
