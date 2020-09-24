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

ActiveRecord::Schema.define(version: 2020_09_24_074131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "brands", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.string "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "title"
    t.string "web"
    t.string "vat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "emails", force: :cascade do |t|
    t.string "email"
    t.bigint "company_id"
    t.bigint "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_emails_on_company_id"
    t.index ["person_id"], name: "index_emails_on_person_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "middle"
    t.string "family"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "item_code"
    t.string "description"
    t.decimal "unit_price", precision: 10, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "currency"
    t.json "pictures"
    t.string "model_code"
    t.integer "model_year"
    t.bigint "brand_id"
    t.bigint "technology_id"
    t.string "offer_type"
    t.string "condition"
    t.index ["brand_id"], name: "index_products_on_brand_id"
    t.index ["technology_id"], name: "index_products_on_technology_id"
  end

  create_table "sale_items", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.decimal "price"
    t.integer "qty"
    t.bigint "sale_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "currency"
    t.string "brand"
    t.index ["sale_id"], name: "index_sale_items_on_sale_id"
  end

  create_table "sales", force: :cascade do |t|
    t.string "company_title"
    t.string "address"
    t.string "status"
    t.decimal "discount"
    t.decimal "vat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "payment"
    t.text "delivery_condition"
    t.string "delivery_time"
    t.string "offer_type"
    t.bigint "person_id"
    t.string "currency"
    t.string "offer_no"
    t.text "payment_details"
    t.bigint "company_id"
    t.boolean "waranty"
    t.index ["company_id"], name: "index_sales_on_company_id"
    t.index ["person_id"], name: "index_sales_on_person_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.string "img"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ancestry"
    t.index ["ancestry"], name: "index_technologies_on_ancestry"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "approved", default: false, null: false
    t.index ["approved"], name: "index_users_on_approved"
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "emails", "companies"
  add_foreign_key "emails", "people"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "technologies"
  add_foreign_key "sale_items", "sales"
  add_foreign_key "sales", "companies"
  add_foreign_key "sales", "people"
end
