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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130529065715) do

  create_table "connection_categories", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.integer  "connection_category_class_id"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
  end

  create_table "connection_category_classes", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "connection_category_members", :force => true do |t|
    t.integer  "connection_id"
    t.integer  "connection_category_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  create_table "connection_groups", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "connections", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "name_kana"
    t.string   "zip"
    t.string   "prefectures"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "ban_division"
    t.string   "miscellaneous_division"
    t.decimal  "credit_limit"
    t.decimal  "credit_limit_increas_frame"
    t.integer  "connection_group_id"
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
    t.string   "supplier_division"
    t.string   "customer_division"
  end

  create_table "customers", :force => true do |t|
    t.string   "code"
    t.integer  "branch_number"
    t.string   "division"
    t.string   "billing_code"
    t.integer  "billing_branch_number"
    t.string   "collect_code"
    t.integer  "collect_branch_number"
    t.string   "name"
    t.string   "name_kana"
    t.string   "company_person_responsible_code"
    t.string   "person_responsible_name"
    t.string   "department_name"
    t.string   "zip"
    t.string   "prefectures"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "mail"
    t.string   "collect_division"
    t.string   "closing_day_1"
    t.string   "payment_month_1"
    t.string   "payment_day_1"
    t.string   "payment_method_1"
    t.string   "closing_day_2"
    t.string   "payment_month_2"
    t.string   "payment_day_2"
    t.string   "payment_method_2"
    t.string   "connection_id"
    t.datetime "created_at",                      :null => false
    t.datetime "updated_at",                      :null => false
  end

  create_table "departments", :force => true do |t|
    t.string   "code"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "name"
    t.integer  "organization_hierarchy"
    t.string   "data_input"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.string   "higt_department_code"
  end

  create_table "electronic_approvals", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "employees", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "name_kana"
    t.date     "start_date"
    t.integer  "department_id"
    t.integer  "occupational_category_id"
    t.string   "electronic_approval_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "occupational_categories", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "product_groupings", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "class_name"
    t.integer  "product_grouping_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "code"
    t.string   "name_long"
    t.string   "name_short"
    t.string   "name_kana"
    t.string   "model_number"
    t.decimal  "unit_sales_price"
    t.decimal  "purchase_price"
    t.decimal  "sales_unit_price"
    t.string   "tax_division"
    t.integer  "product_grouping_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "sales_unit_price_by_customers", :force => true do |t|
    t.integer  "product_id"
    t.integer  "customer_id"
    t.decimal  "sales_unit_price"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "shipments", :force => true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "zip"
    t.string   "address_1"
    t.string   "address_2"
    t.integer  "customer_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "suppliers", :force => true do |t|
    t.string   "code"
    t.integer  "branch_number"
    t.string   "name"
    t.string   "name_kana"
    t.string   "person_responsible_name"
    t.string   "department_name"
    t.string   "zip"
    t.string   "prefectures"
    t.string   "address_1"
    t.string   "address_2"
    t.string   "phone_number"
    t.string   "fax_number"
    t.string   "mail"
    t.string   "closing_day"
    t.string   "payment_month"
    t.string   "payment_day"
    t.string   "payment_division"
    t.integer  "connection_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

end
