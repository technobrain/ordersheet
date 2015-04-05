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

ActiveRecord::Schema.define(version: 20130510174325) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "business_masters", force: true do |t|
    t.string   "business_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "company_masters", force: true do |t|
    t.string   "company_name"
    t.string   "division_name"
    t.string   "charge_person"
    t.string   "contact"
    t.string   "tel_no"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employee_masters", force: true do |t|
    t.string   "employee_cd"
    t.string   "employee_name"
    t.string   "employee_name_kana"
    t.integer  "position_id"
    t.integer  "unit_id"
    t.string   "email_address1"
    t.string   "emai_address2"
    t.string   "postal_cd"
    t.string   "address1"
    t.string   "address2"
    t.string   "tel_no"
    t.string   "fax_no"
    t.string   "mobile_tel_no1"
    t.string   "mobile_tel_no2"
    t.string   "emergency_tel_no"
    t.date     "birth_date"
    t.string   "station"
    t.string   "birth_place"
    t.string   "education_level"
    t.text     "other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_break_times", force: true do |t|
    t.integer  "order_id"
    t.time     "break_start_time"
    t.time     "break_end_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_charge_people", force: true do |t|
    t.integer  "order_id"
    t.string   "employee_id"
    t.integer  "basic_amount"
    t.integer  "time_limit_lower"
    t.integer  "time_limit_upper"
    t.integer  "deduction_bid"
    t.integer  "overtime_bid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_dates", force: true do |t|
    t.integer  "order_id"
    t.date     "order_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_infos", force: true do |t|
    t.integer  "company_id"
    t.integer  "unit_id"
    t.string   "author"
    t.integer  "revenue_unit_id"
    t.integer  "project_id"
    t.integer  "business_id"
    t.date     "contract_start_date"
    t.date     "contract_end_date"
    t.string   "work_place"
    t.date     "income_date"
    t.integer  "payment_site_id"
    t.time     "work_start_date"
    t.time     "work_end_date"
    t.text     "other"
    t.date     "general_receipt_date"
    t.date     "general_order_date"
    t.integer  "general_order_no"
    t.text     "general_other"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "payment_site_masters", force: true do |t|
    t.string   "payment_site_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "position_masters", force: true do |t|
    t.string   "position_name"
    t.integer  "position_expenses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "project_masters", force: true do |t|
    t.integer  "company_id"
    t.string   "project_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_masters", force: true do |t|
    t.string   "unit_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
