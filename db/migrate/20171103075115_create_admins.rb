class CreateAdmins < ActiveRecord::Migration[5.1]
  def change
    create_table :admins do |t|
      t.text :name
      t.string :password
      t.string :type
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
