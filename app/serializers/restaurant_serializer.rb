class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :favourited_restaurant, :users
end
