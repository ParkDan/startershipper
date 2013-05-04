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

ActiveRecord::Schema.define(:version => 20130504172537) do

  create_table "events", :force => true do |t|
    t.string   "title"
    t.string   "caption"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.datetime "timestamp"
    t.integer  "user_id"
    t.integer  "group_id"
  end

  create_table "groups", :force => true do |t|
    t.string  "name"
    t.string  "caption"
    t.integer "member_limit"
  end

  create_table "ideas", :force => true do |t|
    t.string   "name"
    t.string   "caption"
    t.datetime "timestamp"
    t.integer  "user_id"
    t.integer  "group_id"
  end

  create_table "networks", :force => true do |t|
    t.string "name"
    t.string "caption"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "caption"
    t.datetime "timestamp"
    t.integer  "user_id"
    t.integer  "group_id"
  end

end
