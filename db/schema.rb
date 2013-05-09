
ActiveRecord::Schema.define(:version => 20130509032840) do

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
    t.integer "network_id"
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
    t.string "password"
  end

  create_table "posts", :force => true do |t|
    t.string   "title"
    t.string   "caption"
    t.datetime "timestamp"
    t.integer  "user_id"
    t.integer  "group_id"
  end

  create_table "profiles", :force => true do |t|
    t.string  "name"
    t.string  "meet_pref"
    t.string  "avail_times"
    t.text    "bio"
    t.integer "user_id"
    t.integer "network_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "profile_id"
    t.integer  "network_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
