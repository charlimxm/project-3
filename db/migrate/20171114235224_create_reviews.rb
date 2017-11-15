class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :feedback
      t.references :user, foreign_key: true
      t.references :dish, foreign_key: true
      t.string :created_on
    end
  end
end
