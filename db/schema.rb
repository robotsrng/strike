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

ActiveRecord::Schema.define(version: 2019_03_03_213648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "chits", force: :cascade do |t|
    t.integer "quantity"
    t.integer "type_code"
    t.decimal "product_cost", precision: 2
    t.text "description"
    t.text "notes"
    t.text "history"
    t.bigint "stock_part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["stock_part_id"], name: "index_chits_on_stock_part_id"
  end

  create_table "customer_portals", force: :cascade do |t|
    t.string "company_name"
    t.string "company_phone"
    t.string "company_email"
    t.string "company_fax"
    t.string "company_website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock_parts", force: :cascade do |t|
    t.string "part_number"
    t.string "name"
    t.text "description"
    t.string "category_code"
    t.decimal "stock_cost", precision: 2
    t.integer "minimum_qty"
    t.integer "maximum_qty"
    t.integer "restock_to_level"
    t.string "stock_links", array: true
    t.decimal "contract_price", precision: 2
    t.text "user_history"
    t.text "notes"
    t.bigint "customer_portal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_portal_id"], name: "index_stock_parts_on_customer_portal_id"
  end

  create_table "supplier_parts", force: :cascade do |t|
    t.string "part_number"
    t.string "name"
    t.text "description"
    t.string "category_code"
    t.decimal "supplier_cost"
    t.text "history"
    t.bigint "supplier_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["supplier_id"], name: "index_supplier_parts_on_supplier_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "supplier_code"
    t.text "address"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.string "website"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "address"
    t.string "role"
    t.bigint "customer_portal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["customer_portal_id"], name: "index_users_on_customer_portal_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chits", "stock_parts"
  add_foreign_key "stock_parts", "customer_portals"
  add_foreign_key "supplier_parts", "suppliers"
end
