class RemoveColumnData < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :data, :string
  end
end
