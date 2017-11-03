class AddColumnDate < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :date, :string
  end
end
