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

ActiveRecord::Schema.define(:version => 20130305140259) do

  create_table "cases", :force => true do |t|
    t.date     "operation_date"
    t.integer  "position"
    t.integer  "patient_id"
    t.integer  "surgeon_id"
    t.integer  "anesthesia_id"
    t.string   "surgery"
    t.string   "triage"
    t.string   "case_cart"
    t.string   "or_room"
    t.integer  "time_estimate"
    t.text     "notes"
    t.boolean  "finished"
    t.boolean  "started"
    t.date     "started_at"
    t.date     "finished_at"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "patients", :force => true do |t|
    t.string   "mrn"
    t.string   "name"
    t.string   "location"
    t.date     "dob"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surgeries", :force => true do |t|
    t.integer  "anesthesia_id"
    t.string   "case_cart"
    t.boolean  "finished"
    t.datetime "finished_at"
    t.text     "notes"
    t.date     "operation_date"
    t.string   "or_room"
    t.integer  "patient_id"
    t.integer  "position"
    t.boolean  "started"
    t.datetime "started_at"
    t.integer  "surgeon_id"
    t.string   "surgery"
    t.integer  "time_estimate"
    t.string   "triage"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "cell_phone"
    t.string   "email"
    t.string   "password"
    t.integer  "staff_type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
