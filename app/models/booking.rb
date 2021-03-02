class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_one :chat
  has_one :chef_review, dependent: :destroy
  has_one :recipe_review, dependent: :destroy

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true

  # validates :start_date, :end_date, presence: true
  # validate :end_date_after_start_date

  # private

  # def end_date_after_start_date
  #   return if end_date.blank? || start_date.blank?

  #   if end_date < start_date
  #     errors.add(:end_date, "must be after the start date")
  #   end
  # end
end
