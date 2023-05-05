# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_05_031501) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customers", force: :cascade do |t|
    t.string "document", null: false
    t.string "name", null: false
    t.string "email", null: false
    t.string "mobile_phone", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["document"], name: "index_customers_on_document", unique: true
    t.index ["email"], name: "index_customers_on_email", unique: true
    t.index ["mobile_phone"], name: "index_customers_on_mobile_phone", unique: true
  end

  create_table "vehicle_parkings", force: :cascade do |t|
    t.string "vehicle_registration", null: false
    t.datetime "date_entry", null: false
    t.datetime "date_exit"
    t.float "price"
    t.bigint "customer_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_id"], name: "index_vehicle_parkings_on_customer_id"
    t.index ["vehicle_registration"], name: "index_vehicle_parkings_on_vehicle_registration", unique: true
  end

  add_foreign_key "vehicle_parkings", "customers"
end
