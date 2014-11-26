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

ActiveRecord::Schema.define(version: 20141126170258) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "landlords", force: true do |t|
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", force: true do |t|
    t.string   "postcode"
    t.text     "description"
    t.integer  "current_rent_pennies",  default: 0,     null: false
    t.string   "current_rent_currency", default: "GBP", null: false
    t.integer  "initial_cost_pennies",  default: 0,     null: false
    t.string   "initial_cost_currency", default: "GBP", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "telephone"
  end

  create_table "tenants", force: true do |t|
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
