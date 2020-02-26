class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :email, :favorite_count
  has_many :favorites
end
