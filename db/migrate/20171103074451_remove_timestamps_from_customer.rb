class RemoveTimestampsFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :created_at, :string
    remove_column :customers, :updated_at, :string
  end
end
