class User < ApplicationRecord
  has_secure_password
  has_many :user_favourites
  has_many :restaurants, through: :user_favourites
end
