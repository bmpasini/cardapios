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

ActiveRecord::Schema.define(version: 20141002161638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "menus", force: true do |t|
    t.string   "session"
    t.string   "product"
    t.string   "product_description"
    t.float    "price"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["restaurant_id"], name: "index_menus_on_restaurant_id", using: :btree

  create_table "payment_methods", force: true do |t|
    t.string   "name"
    t.string   "icon"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string   "name"
    t.integer  "imageable_id"
    t.string   "imageable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurant_categories", force: true do |t|
    t.string   "category",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurant_categorizations", force: true do |t|
    t.integer  "restaurant_id"
    t.integer  "restaurant_category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurant_categorizations", ["restaurant_category_id"], name: "index_restaurant_categorizations_on_restaurant_category_id", using: :btree
  add_index "restaurant_categorizations", ["restaurant_id"], name: "index_restaurant_categorizations_on_restaurant_id", using: :btree

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "street"
    t.string   "number"
    t.string   "complement"
    t.string   "neighborhood"
    t.string   "region"
    t.string   "email"
    t.string   "phone"
    t.string   "site"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["customer_id"], name: "index_restaurants_on_customer_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name",       null: false
    t.string   "email",      null: false
    t.string   "password",   null: false
    t.string   "photo"
    t.boolean  "is_admin?"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
