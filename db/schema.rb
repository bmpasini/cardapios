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

ActiveRecord::Schema.define(version: 20141029211920) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorited_relationships", force: true do |t|
    t.integer  "user_id"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "favorited_relationships", ["restaurant_id"], name: "index_favorited_relationships_on_restaurant_id", using: :btree
  add_index "favorited_relationships", ["user_id"], name: "index_favorited_relationships_on_user_id", using: :btree

  create_table "menu_items", force: true do |t|
    t.string   "session"
    t.string   "name"
    t.string   "description"
    t.float    "price"
    t.integer  "menu_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menu_items", ["menu_id"], name: "index_menu_items_on_menu_id", using: :btree

  create_table "menus", force: true do |t|
    t.string   "status"
    t.integer  "restaurant_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "menus", ["restaurant_id"], name: "index_menus_on_restaurant_id", using: :btree

  create_table "neighborhoods", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "restaurant_categorizations", force: true do |t|
    t.integer  "restaurant_id"
    t.integer  "restaurant_specialty_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurant_categorizations", ["restaurant_id"], name: "index_restaurant_categorizations_on_restaurant_id", using: :btree
  add_index "restaurant_categorizations", ["restaurant_specialty_id"], name: "index_restaurant_categorizations_on_restaurant_specialty_id", using: :btree

  create_table "restaurant_specialties", force: true do |t|
    t.string   "specialty",       null: false
    t.string   "specialty_fixed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", force: true do |t|
    t.string   "name"
    t.string   "name_fixed"
    t.string   "street"
    t.string   "number"
    t.string   "complement"
    t.string   "neighborhood"
    t.string   "city"
    t.string   "state"
    t.string   "CEP"
    t.string   "region"
    t.string   "public_email"
    t.string   "contact_email"
    t.string   "phone"
    t.string   "site"
    t.integer  "customer_id"
    t.integer  "neighborhood_model_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "restaurants", ["customer_id"], name: "index_restaurants_on_customer_id", using: :btree
  add_index "restaurants", ["neighborhood_model_id"], name: "index_restaurants_on_neighborhood_model_id", using: :btree

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
