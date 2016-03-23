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

ActiveRecord::Schema.define(version: 20160323074840) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "categories", ["category_id"], name: "index_categories_on_category_id", using: :btree

  create_table "components", force: :cascade do |t|
    t.integer  "dish_id"
    t.float    "amount"
    t.string   "units"
    t.integer  "ingredient_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "components", ["dish_id"], name: "index_components_on_dish_id", using: :btree
  add_index "components", ["ingredient_id"], name: "index_components_on_ingredient_id", using: :btree

  create_table "dishes", force: :cascade do |t|
    t.string   "name"
    t.string   "time_for_cook"
    t.string   "instructions"
    t.string   "appliances_used"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "ingredients", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "alternative_name"
    t.integer  "measure_unit_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "ingredients", ["measure_unit_id"], name: "index_ingredients_on_measure_unit_id", using: :btree

  create_table "measure_units", force: :cascade do |t|
    t.string   "standard_name"
    t.string   "nonstandard_name"
    t.float    "quantity_in_standard"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  add_foreign_key "categories", "categories"
  add_foreign_key "components", "dishes"
  add_foreign_key "components", "ingredients"
  add_foreign_key "ingredients", "measure_units"
end
