class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :ratings
end
