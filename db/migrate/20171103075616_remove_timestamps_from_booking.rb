class RemoveTimestampsFromBooking < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :created_at, :string
    remove_column :bookings, :updated_at, :string
  end
end
