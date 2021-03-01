class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_one :chat
  has_one :chef_review, dependent: :destroy
  has_one :recipe_review, dependent: :destroy

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
end
