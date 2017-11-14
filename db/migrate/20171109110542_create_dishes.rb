class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.string :name
      t.float :price
      t.references :restaurant, foreign_key: true
      t.integer :discount
      t.string :photourl, default: "https://www.eataly.com/wp/wp-content/uploads/2016/09/Tagliatelle-alla-Bolognese.jpg"

    end
  end
end
