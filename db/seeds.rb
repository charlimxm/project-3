# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

#Delete data before recreating data
# Customer.destroy_all

10.times do

# resto = Restaurant.new
# resto.name = Faker::Company.name
# resto.phone_number = rand(61234567..69999999)
# resto.address = Faker::Address.street_address
# resto.user_id = 1
#
# resto.save

#
dish = Dish.new
dish.name = Faker::Food.dish
priceDollar = rand(20)
priceCents = rand(0.9)
price = `#{priceDollar}.#{priceCents}`
dish.price = price
dish.restaurant_id = rand(10)
dish.discount = rand(100)
dish.photourl= "photolink_here"
end
