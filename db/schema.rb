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

ActiveRecord::Schema.define(version: 20180916031004) do

  create_table "categories", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "quantity",                            default: 0, null: false
    t.decimal  "price",      precision: 15, scale: 2,             null: false
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "order_id"
  end

  add_index "order_items", ["order_id"], name: "index_order_items_on_order_id"

  create_table "orders", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name",                           null: false
    t.decimal  "sub_total",  precision: 15, scale: 2, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "product_categories", force: :cascade do |t|
    t.integer  "product_id",  null: false
    t.integer  "category_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "product_categories", ["category_id"], name: "index_product_categories_on_category_id"
  add_index "product_categories", ["product_id"], name: "index_product_categories_on_product_id"

  create_table "product_variants", force: :cascade do |t|
    t.string   "title",                               null: false
    t.decimal  "price",      precision: 15, scale: 2, null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "product_id"
  end

  add_index "product_variants", ["product_id"], name: "index_product_variants_on_product_id"

  create_table "products", force: :cascade do |t|
    t.string   "title",                                null: false
    t.text     "description"
    t.decimal  "price",       precision: 15, scale: 2, null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
