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

ActiveRecord::Schema[7.0].define(version: 2023_03_09_150654) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "parties_id", null: false
    t.boolean "playlist_check"
    t.boolean "recipe_check"
    t.boolean "game_check"
    t.datetime "starts_at"
    t.datetime "ends_at"
    t.float "latitude"
    t.float "longitude"
    t.string "address"
    t.string "guest_list"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "has_mocktails"
    t.index ["parties_id"], name: "index_bookings_on_parties_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "edibles", force: :cascade do |t|
    t.string "type"
    t.boolean "has_alcohol"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parties", force: :cascade do |t|
    t.string "name"
    t.string "playlist"
    t.string "pinterest"
    t.text "game"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "party_edibles", force: :cascade do |t|
    t.bigint "party_id", null: false
    t.bigint "edible_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["edible_id"], name: "index_party_edibles_on_edible_id"
    t.index ["party_id"], name: "index_party_edibles_on_party_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "parties", column: "parties_id"
  add_foreign_key "bookings", "users"
  add_foreign_key "party_edibles", "edibles"
  add_foreign_key "party_edibles", "parties"
end
