class Restaurant < ApplicationRecord
  belongs_to :user, optional: true
end
