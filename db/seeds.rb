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
cust = Customer.new
cust.name = Faker::Name.name
cust.password = Faker::Internet.password(10, 20)
cust.mobile_number = rand(81234567..99999999)
cust.email = Faker::Internet.email

cust.save

resto = Restaurant.new
resto.name = Faker::Company.name
resto.company_name = Faker::University.greek_organization
resto.restaurant_number = rand(61234567..69999999)
resto.address = Faker::Address.street_address
resto.area = Faker::Company.name
resto.cuisine = Faker::Company.name
resto.max_seats = rand(1..40)
hours = rand(8..11)
resto.opening_hours = "#{hours}AM - 10PM"
resto.twelvepm = rand(1..4)
resto.onepm = rand(1..4)
resto.twopm = rand(1..4)
resto.threepm = rand(1..4)
resto.fourpm = rand(1..4)
resto.fivepm = rand(1..4)
resto.sixpm = rand(1..4)
resto.sevenpm = rand(1..4)
resto.eightpm = rand(1..4)
resto.ninepm = rand(1..4)
resto.tenpm = rand(1..4)

resto.save

# staff = Staff.new
# staff.name = Faker::Name.name
# staff.password = Faker::Internet.password(10, 20)
# staff.type = "Default"
# staff.restaurant_id = rand(1..10)
#
# staff.save
end

# TODO check with prima why it doesnt propagate over to bookings table
10.times do
booking = Booking.new
booking.customer_id = 1
booking.restaurant_id = rand(1..9)
booking.pax = rand(20)
hours = rand(3..11)
booking.time = "#{hours}PM"
booking.comments = Faker::Robin.quote
booking.date = Faker::Date.between(1.week.from_now, Date.today)

booking.save
end
