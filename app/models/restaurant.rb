class Restaurant < ApplicationRecord
  belongs_to :user, optional: true
  has_many :dishes, through: :dishes, dependent: :destroy

  def self.search(params)
    if params
      where('lower(name) LIKE ?', "%#{params}%")
    else
      all
    end

  end
end
