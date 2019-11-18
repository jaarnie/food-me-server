class FavoritesSerializer < ActiveModel::Serializer
  attributes :id, :res_id, :user_id, :restaurant
end
