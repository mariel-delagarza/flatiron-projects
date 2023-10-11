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

ActiveRecord::Schema.define(version: 20190331234125) do

  create_table "comments", force: :cascade do |t|
    t.text    "content"
    t.integer "user_id"
    t.integer "place_id"
  end

  create_table "places", force: :cascade do |t|
    t.string  "name"
    t.string  "address_1"
    t.string  "address_2"
    t.string  "city"
    t.integer "zip"
    t.boolean "changing_tables_women"
    t.boolean "changing_tables_men"
    t.boolean "high_chairs"
    t.boolean "slings_for_carseats"
    t.boolean "family_restrooms"
    t.boolean "nursing_rooms"
    t.integer "user"
    t.string  "state"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
  end

end
