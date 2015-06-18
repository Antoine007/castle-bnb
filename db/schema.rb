# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150618124521) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer  "castle_id"
    t.integer  "user_id"
    t.boolean  "confirmed"
    t.boolean  "paid"
    t.date     "start_date"
    t.date     "end_date"
    t.text     "review"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "bookings", ["castle_id"], name: "index_bookings_on_castle_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "castles", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.float    "latitude"
    t.float    "longitude"
    t.integer  "index"
    t.string   "name"
    t.string   "address"
    t.text     "description"
    t.integer  "beds"
    t.string   "lord_id"
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_updated_at"
    t.integer  "price"
  end

  create_table "nights", force: :cascade do |t|
    t.integer  "castle_id"
    t.integer  "booking_id"
    t.date     "not_available"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "nights", ["booking_id"], name: "index_nights_on_booking_id", using: :btree
  add_index "nights", ["castle_id"], name: "index_nights_on_castle_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "gender"
    t.string   "address"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bookings", "castles"
  add_foreign_key "bookings", "users"
  add_foreign_key "nights", "bookings"
  add_foreign_key "nights", "castles"
end
