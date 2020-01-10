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

ActiveRecord::Schema.define(version: 2020_01_10_113950) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "booking_statuses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.string "start_date"
    t.string "end_date"
    t.string "name"
    t.string "anlass"
    t.bigint "user_id"
    t.bigint "calendar_id"
    t.bigint "template_id"
    t.bigint "booking_status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_status_id"], name: "index_bookings_on_booking_status_id"
    t.index ["calendar_id"], name: "index_bookings_on_calendar_id"
    t.index ["template_id"], name: "index_bookings_on_template_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "calendars", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "resources", force: :cascade do |t|
    t.string "name"
    t.bigint "calendar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "availibility"
    t.index ["calendar_id"], name: "index_resources_on_calendar_id"
  end

  create_table "templates", force: :cascade do |t|
    t.string "name"
    t.string "anlass"
    t.string "status"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_templates_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "flat_id"
    t.index ["flat_id"], name: "index_users_on_flat_id"
  end

  add_foreign_key "bookings", "booking_statuses"
  add_foreign_key "bookings", "calendars"
  add_foreign_key "bookings", "templates"
  add_foreign_key "bookings", "users"
  add_foreign_key "resources", "calendars"
  add_foreign_key "templates", "users"
  add_foreign_key "users", "flats"
end
