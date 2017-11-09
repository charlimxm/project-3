class Restaurant < ApplicationRecord
  def self.search(cuisine, area)
    return Restaurant.all unless cuisine.present? || area.present?
    if cuisine && area.blank?
      where('cuisine = ?', "#{cuisine}")
    elsif date && area.blank?
      where('area = ?', "#{area}")
    else
      where(['cuisine = ? AND area = ?', "#{cuisine}", "#{area}"])
    end
  end
end
