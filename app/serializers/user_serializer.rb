class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email
  has_many :user_favourites
  has_many :restaurants, through: :user_favourites
end
