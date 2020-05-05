class User < ApplicationRecord
  has_secure_password
  has_many :favorites

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, length: { minimum: 6}
  validates :password, presence: :true, confirmation: true
  validates :password_confirmation, presence: true
end
