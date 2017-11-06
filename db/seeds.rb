# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# 10.ti

# TODO check with prima why it doesnt propagate over to bookings table
10.times do
booking = Booking.new
booking.customer_id = rand(1..9)
booking.restaurant_id = rand(1..9)
booking.pax = rand(20)
hours = rand(3..11)
booking.time = "#{hours}PM"
booking.comments = Faker::Robin.quote
booking.date = Faker::Date.between(16.days.ago, Date.today)

booking.save
end
