class CreateRatings < ActiveRecord::Migration[5.1]
  def change
    create_table :ratings do |t|
      t.references :dishes, foreign_key: true
      t.references :user, foreign_key: true

    end
  end
end
