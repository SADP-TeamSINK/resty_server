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

ActiveRecord::Schema.define(version: 20141125160213) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id", using: :btree
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace", using: :btree
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id", using: :btree

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true, using: :btree
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true, using: :btree

  create_table "buildings", force: true do |t|
    t.decimal  "latitude",   precision: 9, scale: 6
    t.decimal  "longitude",  precision: 9, scale: 6
    t.string   "name"
    t.integer  "floor_size"
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
    t.boolean  "available"
    t.boolean  "washlet"
    t.boolean  "multipurpose"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rooms", ["washlet", "available", "multipurpose"], name: "index_rooms_on_washlet_and_available_and_multipurpose", using: :btree

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
    t.string   "store_name"
    t.decimal  "latitude",    precision: 9, scale: 6
    t.decimal  "longitude",   precision: 9, scale: 6
    t.integer  "floor"
    t.integer  "sex"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "toilets", ["longitude", "latitude"], name: "index_toilets_on_longitude_and_latitude", using: :btree

end
