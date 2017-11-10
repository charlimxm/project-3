class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.references :restaurant, foreign_key: true
      t.integer :discount
      t.string :photourl

    end
  end
end
