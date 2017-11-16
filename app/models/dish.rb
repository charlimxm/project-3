class Dish < ApplicationRecord
  belongs_to :restaurant
  has_many :ratings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  def self.search(params)
    if params
      where('lower(name) LIKE ?', "%#{params}%")
    else
      all
    end

  end
end
