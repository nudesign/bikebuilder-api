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

ActiveRecord::Schema.define(version: 20140117014645) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "build_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "build_types_component_types", id: false, force: true do |t|
    t.integer "build_type_id",     null: false
    t.integer "component_type_id", null: false
  end

  add_index "build_types_component_types", ["build_type_id", "component_type_id"], name: "index_build_types_and_components_type_id", unique: true, using: :btree

  create_table "builds", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "build_type_id"
  end

  add_index "builds", ["build_type_id"], name: "index_builds_on_build_type_id", using: :btree

  create_table "builds_components", id: false, force: true do |t|
    t.integer "build_id",     null: false
    t.integer "component_id", null: false
  end

  add_index "builds_components", ["build_id", "component_id"], name: "index_builds_components_on_build_id_and_component_id", unique: true, using: :btree

  create_table "component_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "primary"
  end

  add_index "component_types", ["primary"], name: "index_component_types_on_primary", using: :btree

  create_table "components", force: true do |t|
    t.string  "model"
    t.decimal "cost",              precision: 5, scale: 2, default: 0.0
    t.integer "weight"
    t.integer "manufacturer_id"
    t.integer "component_type_id"
  end

  add_index "components", ["component_type_id"], name: "index_components_on_component_type_id", using: :btree
  add_index "components", ["manufacturer_id"], name: "index_components_on_manufacturer_id", using: :btree

  create_table "manufacturers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "website"
  end

end
