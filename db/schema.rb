# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_08_02_160414) do

  create_table "addresses", force: :cascade do |t|
    t.string "street"
    t.string "city"
    t.string "postcode"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_addresses_on_customer_id"
  end

  create_table "cabins", force: :cascade do |t|
    t.string "name"
    t.integer "beds"
    t.integer "deck"
    t.integer "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_cabins_on_ship_id"
  end

  create_table "cabins_reservations", id: false, force: :cascade do |t|
    t.integer "cabin_id", null: false
    t.integer "reservation_id", null: false
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string "number"
    t.string "exp_date"
    t.string "name_on_card"
    t.string "organisation"
    t.integer "customer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_credit_cards_on_customer_id"
  end

  create_table "cruises", force: :cascade do |t|
    t.string "name"
    t.integer "ship_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["ship_id"], name: "index_cruises_on_ship_id"
  end

  create_table "customers", force: :cascade do |t|
    t.string "last_name"
    t.string "first_name"
    t.integer "has_good_credit"
    t.boolean "paid"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "harbours", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "lat"
    t.string "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.decimal "amount"
    t.integer "credit_card_id"
    t.integer "customer_id"
    t.integer "reservation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["credit_card_id"], name: "index_payments_on_credit_card_id"
    t.index ["customer_id"], name: "index_payments_on_customer_id"
    t.index ["reservation_id"], name: "index_payments_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.integer "customer_id"
    t.integer "cruise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cruise_id"], name: "index_reservations_on_cruise_id"
    t.index ["customer_id"], name: "index_reservations_on_customer_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string "name"
    t.integer "tonnage"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "addresses", "customers"
  add_foreign_key "cabins", "ships"
  add_foreign_key "credit_cards", "customers"
  add_foreign_key "cruises", "ships"
  add_foreign_key "payments", "credit_cards"
  add_foreign_key "payments", "customers"
  add_foreign_key "payments", "reservations"
  add_foreign_key "reservations", "cruises"
  add_foreign_key "reservations", "customers"
end
