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

ActiveRecord::Schema.define(version: 7) do

  create_table "actors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
  end

  create_table "ar_internal_metadata", primary_key: "key", force: :cascade do |t|
    t.string   "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ar_internal_metadata", ["key"], name: "sqlite_autoindex_ar_internal_metadata_1", unique: true

  create_table "characters", force: :cascade do |t|
    t.string  "name"
    t.integer "show_id"
    t.integer "actor_id"
    t.string  "catchphrase"
  end

  create_table "networks", force: :cascade do |t|
    t.string  "call_letters"
    t.integer "channel"
  end

  create_table "shows", force: :cascade do |t|
    t.string  "name"
    t.integer "network_id"
    t.string  "day"
    t.string  "season"
    t.string  "genre"
  end

end
