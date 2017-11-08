class Booking < ApplicationRecord
  belongs_to :restaurant
  belongs_to :customer
end
