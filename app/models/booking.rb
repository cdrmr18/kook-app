class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_one :chat
  has_one :chef_review, dependent: :destroy
  has_one :recipe_review, dependent: :destroy

  validates :date, presence: true
  validates :start_time, presence: true
  validates :end_time, presence: true
  validate :end_time_after_start_time

  private

  def end_time_after_start_time
    return if end_time.blank? || start_time.blank?

    if end_time < start_time
      errors.add(:end_time, "must be after the start time")
    end
  end
end
