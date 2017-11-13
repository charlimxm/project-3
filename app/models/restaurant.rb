class Restaurant < ApplicationRecord
  belongs_to :user, optional: true
  has_many :dishes
end
