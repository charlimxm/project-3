# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20171114235224) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "dishes", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.bigint "restaurant_id"
    t.integer "discount"
    t.string "photourl", default: "dishPic.png"
    t.index ["restaurant_id"], name: "index_dishes_on_restaurant_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.bigint "dish_id"
    t.bigint "user_id"
    t.index ["dish_id"], name: "index_ratings_on_dish_id"
    t.index ["user_id"], name: "index_ratings_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "phone_number"
    t.string "photo_url", default: "defaultRestoPic.jpg"
    t.string "description", default: "No Description Provided"
    t.bigint "user_id"
    t.index ["user_id"], name: "index_restaurants_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.string "feedback"
    t.bigint "user_id"
    t.bigint "dish_id"
    t.string "created_on"
    t.index ["dish_id"], name: "index_reviews_on_dish_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "photourl", default: "userPic.png"
    t.boolean "owner", default: false
    t.boolean "admin", default: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "dishes", "restaurants"
  add_foreign_key "ratings", "dishes"
  add_foreign_key "ratings", "users"
  add_foreign_key "restaurants", "users"
  add_foreign_key "reviews", "dishes"
  add_foreign_key "reviews", "users"
end
