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

ActiveRecord::Schema.define(version: 20180725151440) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cambridge_invents", force: :cascade do |t|
    t.integer  "amount"
    t.string   "product_id"
    t.string   "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cambridge_orders", force: :cascade do |t|
    t.string   "status"
    t.string   "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cambridge_products", force: :cascade do |t|
    t.string   "name"
    t.string   "measurement"
    t.integer  "tuesday_max"
    t.integer  "thursday_max"
    t.boolean  "prepped"
    t.string   "item_type"
    t.string   "supplier"
    t.integer  "case_quantity"
    t.string   "location"
    t.boolean  "deleted"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "amount"
  end

  create_table "invents", force: :cascade do |t|
    t.integer  "amount"
    t.string   "product_id"
    t.string   "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "message"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "measurement"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "tuesday_max"
    t.integer  "thursday_max"
    t.boolean  "prepped"
    t.string   "item_type"
    t.integer  "amount"
    t.string   "location"
    t.boolean  "deleted"
    t.integer  "case_quantity"
  end

  create_table "trappe_invents", force: :cascade do |t|
    t.string   "product_id"
    t.string   "order_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trappe_orders", force: :cascade do |t|
    t.string   "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "message"
  end

  create_table "trappe_products", force: :cascade do |t|
    t.string   "name"
    t.string   "measurement"
    t.string   "tuesday_max"
    t.string   "thursday_max"
    t.boolean  "prepped"
    t.string   "item_type"
    t.string   "amount"
    t.integer  "case_quantity"
    t.string   "location"
    t.boolean  "deleted"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "supplier"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "role"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
