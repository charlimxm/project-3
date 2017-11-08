class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :customer, foreign_key: true
      t.references :restaurant, foreign_key: true
      t.integer :pax
      t.string :time
      t.string :date
      t.string :comments
    end
  end
end
