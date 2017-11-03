class RemoveTimestampsFromRestaurant < ActiveRecord::Migration[5.1]
  def change
    remove_column :restaurants, :created_at, :string
    remove_column :restaurants, :updated_at, :string
  end
end
