class AddDetailsToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :customer_type, :string
    add_reference :customers, :restaurant, foreign_key: true
  end
end
