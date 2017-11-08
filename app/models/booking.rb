class Booking < ApplicationRecord
  belongs_to :restaurant, optional: true
  belongs_to :customer
end
