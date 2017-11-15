# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Delete data before recreating data
# Customer.destroy_all

10.times do
  # resto = Restaurant.new
  # resto.name = Faker::Company.name
  # resto.phone_number = rand(61_234_567..69_999_999)
  # resto.address = Faker::Address.street_address
  # resto.user_id = 1
  # # resto.photourl = 'dishPic.png'
  # # resto.description = Faker::Company.name
  #
  # resto.save
  #

  dish = Dish.new
  dish.name = Faker::Food.dish
  dish.price = rand(20)
  dish.restaurant_id = rand(10)
  dish.discount = rand(100)
  dish.photourl= "dishPic.png"

  dish.save
  new_review = Review.new
  new_review.feedback = Faker::Lorem.paragraph
  new_review.dish_id = rand(10)
  new_review.user_id = rand(4)
  new_review.created_on = Time.now.strftime("%Y-%m-%d %H:%M:%S")

  new_review.save

  new_rating = Rating.new
  new_rating.dish_id = rand(10)
  new_rating.user_id = 1

  new_rating.save
end
