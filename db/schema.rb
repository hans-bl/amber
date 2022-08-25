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

ActiveRecord::Schema[7.0].define(version: 2022_08_24_180966) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string "status"
    t.string "note"
    t.bigint "cycle_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cycle_id"], name: "index_bookings_on_cycle_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "brands", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cycles", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "color"
    t.string "general_state"
    t.string "location"
    t.integer "price"
    t.integer "release_price"
    t.date "release_date"
    t.integer "peak_power"
    t.integer "continuous_power"
    t.integer "motor_torque"
    t.integer "wheel_torque"
    t.integer "battery_capacity"
    t.integer "useable_capacity"
    t.integer "urban_range"
    t.integer "combined_range"
    t.integer "highway_range"
    t.integer "user_combined_range"
    t.integer "full_charging_time"
    t.integer "partial_charging_time"
    t.integer "charging_power"
    t.integer "voltage"
    t.integer "wheelbase"
    t.integer "caster_angle"
    t.integer "weight"
    t.integer "kilometrage"
    t.string "tires_state"
    t.integer "battery_soh"
    t.integer "nb_of_owners"
    t.string "motor_technology"
    t.string "cell_technology"
    t.string "maintenances"
    t.string "admin_note"
    t.bigint "user_id", null: false
    t.bigint "license_id", null: false
    t.bigint "brand_id", null: false
    t.bigint "model_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["brand_id"], name: "index_cycles_on_brand_id"
    t.index ["license_id"], name: "index_cycles_on_license_id"
    t.index ["model_id"], name: "index_cycles_on_model_id"
    t.index ["user_id"], name: "index_cycles_on_user_id"
  end

  create_table "licenses", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "models", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.integer "phone"
    t.string "bio"
    t.string "payment_preferences"
    t.datetime "birth_date", precision: nil
    t.boolean "pro"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "cycles"
  add_foreign_key "bookings", "users"
  add_foreign_key "cycles", "brands"
  add_foreign_key "cycles", "licenses"
  add_foreign_key "cycles", "models"
  add_foreign_key "cycles", "users"
end
