# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
u1 = User.create(first_name: 'Adam', last_name: 'Arnold', email: '2@2', password: '2')
u2 = User.create(first_name: 'Kat', last_name: 'Nemcova', email: '1@1', password: '1')

Restaurant.delete_all
r1 = Restaurant.create(favourited_restaurant: 'r { r: 1}')
r2 = Restaurant.create(favourited_restaurant: 'r { r: 2}')
r3 = Restaurant.create(favourited_restaurant: 'r { r: 3}')
r4 = Restaurant.create(favourited_restaurant: 'r { r: 4}')

UserFavourite.delete_all
f1 = UserFavourite.create(user_id: u1.id, restaurant_id: r2.id)
f2 = UserFavourite.create(user_id: u1.id, restaurant_id: r1.id)
f3 = UserFavourite.create(user_id: u2.id, restaurant_id: r1.id)
f4 = UserFavourite.create(user_id: u2.id, restaurant_id: r2.id)
f5 = UserFavourite.create(user_id: u2.id, restaurant_id: r3.id)


