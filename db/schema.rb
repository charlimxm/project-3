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

ActiveRecord::Schema.define(version: 20171103075309) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "customer_id"
    t.bigint "restaurant_id"
    t.integer "pax"
    t.string "time"
    t.string "date"
    t.string "comments"
    t.index ["customer_id"], name: "index_bookings_on_customer_id"
    t.index ["restaurant_id"], name: "index_bookings_on_restaurant_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.integer "mobile_number"
    t.string "cust_type", default: "user"
    t.string "company_name"
    t.bigint "restaurant_id"
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
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_customers_on_reset_password_token", unique: true
    t.index ["restaurant_id"], name: "index_customers_on_restaurant_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.text "name"
    t.integer "restaurant_number"
    t.string "company_name"
    t.string "address"
    t.integer "max_seats"
    t.string "opening_hours"
    t.string "twelvepm"
    t.string "onepm"
    t.string "twopm"
    t.string "threepm"
    t.string "fourpm"
    t.string "fivepm"
    t.string "sixpm"
    t.string "sevenpm"
    t.string "eightpm"
    t.string "ninepm"
    t.string "tenpm"
  end

  add_foreign_key "bookings", "customers"
  add_foreign_key "bookings", "restaurants"
  add_foreign_key "customers", "restaurants"
end
