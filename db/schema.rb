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

ActiveRecord::Schema.define(:version => 20130528063038) do

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

end
