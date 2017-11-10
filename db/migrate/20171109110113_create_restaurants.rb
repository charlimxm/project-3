class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone_number
      t.references :user, foreign_key: true

    end
  end
end
