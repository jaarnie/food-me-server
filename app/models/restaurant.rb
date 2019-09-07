class Restaurant < ApplicationRecord
  has_many :user_favourites
  has_many :users, through: :user_favourites
end
