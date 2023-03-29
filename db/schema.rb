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

ActiveRecord::Schema[7.0].define(version: 2023_03_28_075057) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bikes", force: :cascade do |t|
    t.string "model"
    t.string "reg_number"
    t.string "cc"
    t.string "location"
    t.string "image_url"
    t.integer "price"
    t.integer "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "phone_number"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rider_bikes", force: :cascade do |t|
    t.bigint "rider_id", null: false
    t.bigint "bike_id", null: false
    t.bigint "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bike_id"], name: "index_rider_bikes_on_bike_id"
    t.index ["owner_id"], name: "index_rider_bikes_on_owner_id"
    t.index ["rider_id"], name: "index_rider_bikes_on_rider_id"
  end

  create_table "riders", force: :cascade do |t|
    t.string "full_name"
    t.string "username"
    t.string "phone_number"
    t.string "password_digest"
    t.string "email"
    t.string "licence_number"
    t.string "date_of_birth"
    t.string "spouse_contact"
    t.string "id_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "rider_bikes", "bikes"
  add_foreign_key "rider_bikes", "owners"
  add_foreign_key "rider_bikes", "riders"
end
