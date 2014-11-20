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

ActiveRecord::Schema.define(version: 20141120112605) do

  create_table "buildings", force: true do |t|
    t.float    "latitude",   limit: 24
    t.float    "laongitude", limit: 24
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "empties", force: true do |t|
    t.integer  "room_id"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "empties", ["status"], name: "index_empties_on_status", using: :btree

  create_table "movies", force: true do |t|
    t.integer  "category_id"
    t.integer  "company_id"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "room_pictures", force: true do |t|
    t.integer  "room_id"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.integer  "toilet_id"
    t.boolean  "washlet"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["washlet"], name: "index_rooms_on_washlet", using: :btree

  create_table "stores", force: true do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "stores", ["name"], name: "index_stores_on_name", using: :btree

  create_table "toilet_pictures", force: true do |t|
    t.integer  "toilet_id"
    t.string   "path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "toilets", force: true do |t|
    t.integer  "building_id"
    t.integer  "store_id"
    t.float    "latitude",     limit: 24
    t.float    "longitude",    limit: 24
    t.boolean  "multipurpose"
    t.integer  "floor"
    t.integer  "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "toilets", ["longitude", "latitude"], name: "index_toilets_on_longitude_and_latitude", using: :btree

end
