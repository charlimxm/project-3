class Rating < ApplicationRecord
  belongs_to :dishes
  belongs_to :user
end
