class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.text :name
      t.string :password
      t.integer :mobile_number
      t.string :email

      t.timestamps
    end
  end
end
