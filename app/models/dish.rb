class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :ratings

  def self.search(params)
    if params
      where('lower(name) LIKE ?', "%#{params}%")
    else
      all
    end

  end
end
