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

ActiveRecord::Schema.define(version: 2021_02_21_132943) do

  create_table "boardbookings", force: :cascade do |t|
    t.integer "booking_length"
    t.date "start_date"
    t.integer "client_id", null: false
    t.integer "surfboard_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["client_id"], name: "index_boardbookings_on_client_id"
    t.index ["surfboard_id"], name: "index_boardbookings_on_surfboard_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.integer "tel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "address"
  end

  create_table "surfboards", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "boardbookings", "clients"
  add_foreign_key "boardbookings", "surfboards"
end
