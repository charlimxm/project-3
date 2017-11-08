class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.text :name
      t.integer :restaurant_number
      t.string :company_name
      t.string :address
      t.string :area
      t.string :cuisine
      t.integer :max_seats
      t.string :opening_hours
      t.string :twelvepm
      t.string :onepm
      t.string :twopm
      t.string :threepm
      t.string :fourpm
      t.string :fivepm
      t.string :sixpm
      t.string :sevenpm
      t.string :eightpm
      t.string :ninepm
      t.string :tenpm
    end
  end
end
