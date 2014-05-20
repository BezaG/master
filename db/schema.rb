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

ActiveRecord::Schema.define(version: 20140520075140) do

  create_table "egg_orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "egg_id"
    t.string   "company"
    t.string   "location"
    t.integer  "daily_quantity"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eggs", force: true do |t|
    t.integer  "user_id"
    t.string   "company"
    t.string   "location"
    t.string   "type_of_egg"
    t.integer  "daily_quantity"
    t.decimal  "price"
    t.string   "reciept"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "honey_orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "honey_id"
    t.string   "company"
    t.string   "location"
    t.integer  "amount"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "honeys", force: true do |t|
    t.integer  "user_id"
    t.string   "company"
    t.string   "location"
    t.string   "honey_type"
    t.integer  "amount"
    t.string   "condition"
    t.decimal  "price"
    t.string   "reciept"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milk_orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "milk_id"
    t.string   "company"
    t.string   "location"
    t.integer  "daily_quantity"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "milks", force: true do |t|
    t.integer  "user_id"
    t.string   "company"
    t.string   "location"
    t.integer  "daily_quantity"
    t.string   "condition"
    t.decimal  "price"
    t.string   "reciept"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mushroom_orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "mushroom_id"
    t.string   "company"
    t.string   "location"
    t.integer  "quantity"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "mushrooms", force: true do |t|
    t.integer  "user_id"
    t.string   "company"
    t.string   "location"
    t.datetime "day_of_supply"
    t.integer  "quantity"
    t.decimal  "price"
    t.string   "reciept"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
