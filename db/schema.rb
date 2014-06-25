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

ActiveRecord::Schema.define(version: 20140625184333) do

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

  create_table "egg_orders", force: true do |t|
    t.integer  "user_id"
    t.integer  "egg_id"
    t.string   "company"
    t.string   "location"
    t.integer  "daily_quantity"
    t.decimal  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "accepted"
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
    t.boolean  "accepted"
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
    t.boolean  "accepted"
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
    t.boolean  "accepted"
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

  create_table "users", force: true do |t|
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
    t.string   "user_name"
    t.string   "company_name"
    t.string   "tel"
    t.string   "role"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
