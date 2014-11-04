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

ActiveRecord::Schema.define(:version => 20141104075713) do

  create_table "experiments", :force => true do |t|
    t.integer "lab1"
    t.integer "lab2"
    t.integer "lab3"
    t.integer "lab4"
    t.integer "lab5"
    t.integer "lab6"
    t.integer "lab7"
    t.integer "sheet_id"
  end

  create_table "sheets", :force => true do |t|
    t.integer  "student_number"
    t.string   "student_name"
    t.integer  "project"
    t.integer  "labs"
    t.integer  "discussions"
    t.integer  "test"
    t.integer  "final"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "talks", :force => true do |t|
    t.integer "discussion1"
    t.integer "discussion2"
    t.integer "discussion3"
    t.integer "discussion4"
    t.integer "discussion5"
    t.integer "discussion6"
    t.integer "discussion7"
    t.integer "discussion8"
    t.integer "discussion9"
    t.integer "discussion10"
    t.integer "discussion11"
    t.integer "sheet_id"
  end

  create_table "users", :force => true do |t|
    t.string  "username"
    t.string  "password"
    t.boolean "admin",    :default => false
  end

end
