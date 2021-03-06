class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  acts_as_favoritor
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :messages
  has_many :bookings
  has_one_attached :photo
  has_one :chef
  has_many :chef_reviews, through: :bookings
  has_many :recipe_reviews, through: :bookings

  # after_create :send_welcome_email

  def owns?(item)
    item.user==self
  end


  private

  def send_welcome_email
    UserMailer.with(user: user).welcome_email.deliver.now
  end
end
