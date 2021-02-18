class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  has_one :chat
end
