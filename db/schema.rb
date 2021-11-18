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



ActiveRecord::Schema.define(version: 2021_11_18_130108) do


  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "car_registrations", force: :cascade do |t|
    t.string "car_make"
    t.string "car_model"
    t.string "chassis_number"
    t.string "engine_number"
    t.string "engine_capacity"
    t.bigint "user_id", null: false
    t.string "numeric_plate"
    t.boolean "payment_done"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "request_number"
    t.index ["user_id"], name: "index_car_registrations_on_user_id"
  end

  create_table "declarations", force: :cascade do |t|
    t.bigint "car_registration_id", null: false
    t.boolean "declaration_approved"
    t.boolean "payment_done"
    t.date "expiry_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "request_number"
    t.string "cof_number"
    t.string "policy_insurance_number"
    t.index ["car_registration_id"], name: "index_declarations_on_car_registration_id"
  end

  create_table "fines", force: :cascade do |t|
    t.integer "fineticket"
    t.boolean "payment_done"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "registration_number"
    t.bigint "user_id"
    t.integer "request_number"
    t.index ["user_id"], name: "index_fines_on_user_id"
  end

  create_table "general_queries", force: :cascade do |t|
    t.string "issue"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_general_queries_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone_number"
    t.string "nic_number"
    t.string "license_number"
    t.boolean "is_analyst", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "car_registrations", "users"
  add_foreign_key "declarations", "car_registrations"
  add_foreign_key "fines", "users"
  add_foreign_key "general_queries", "users"
end
