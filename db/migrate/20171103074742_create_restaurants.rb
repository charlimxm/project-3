class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.integer :restaurant_number
      t.string :address
      t.integer :max_seats
      t.string :opening_hours

      t.timestamps
    end
  end
end
