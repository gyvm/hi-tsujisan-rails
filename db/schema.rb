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

ActiveRecord::Schema.define(version: 20_210_704_053_610) do
  create_table "events", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.text "description"
    t.json "possible_dates"
    t.string "event_date"
  end

  create_table "guest_possible_dates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "guest_possible_date_id"
    t.bigint "guest_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["guest_id"], name: "index_guest_possible_dates_on_guest_id"
    t.index ["guest_possible_date_id"], name: "index_guest_possible_dates_on_guest_possible_date_id"
  end

  create_table "guests", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nickname"
    t.text "comment"
    t.json "possible_dates"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_guests_on_event_id"
  end

  create_table "possible_dates", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "date", null: false
    t.boolean "deleted", default: false, null: false
    t.bigint "event_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["event_id"], name: "index_possible_dates_on_event_id"
  end

  create_table "urls", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "url"
    t.bigint "event_id"
    t.index ["event_id"], name: "index_urls_on_event_id"
  end

  add_foreign_key "guest_possible_dates", "guest_possible_dates"
  add_foreign_key "guest_possible_dates", "guests"
  add_foreign_key "guests", "events"
  add_foreign_key "possible_dates", "events"
  add_foreign_key "urls", "events"
end
