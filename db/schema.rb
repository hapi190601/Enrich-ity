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

ActiveRecord::Schema.define(:version => 2021_04_22_110149) do

  create_table "admins", :force => :cascade do |t|
    t.string "email", :default => "", :null => false
    t.string "encrypted_password", :default => "", :null => false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.index ["email"], :name => "index_admins_on_email", :unique => true
    t.index ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true
  end

  create_table "direct_messages", :force => :cascade do |t|
    t.integer "user_id", :null => false
    t.integer "room_id", :null => false
    t.string "message", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "entries", :force => :cascade do |t|
    t.integer "user_id", :null => false
    t.integer "room_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "favorites", :force => :cascade do |t|
    t.integer "user_id", :null => false
    t.integer "post_id", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "genres", :force => :cascade do |t|
    t.string "name", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.index ["name"], :name => "index_genres_on_name"
  end

  create_table "impressions", :force => :cascade do |t|
    t.string "impressionable_type"
    t.integer "impressionable_id"
    t.integer "user_id"
    t.string "controller_name"
    t.string "action_name"
    t.string "view_name"
    t.string "request_hash"
    t.string "ip_address"
    t.string "session_hash"
    t.text "message"
    t.text "referrer"
    t.text "params"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.index ["controller_name", "action_name", "ip_address"], :name => "controlleraction_ip_index"
    t.index ["controller_name", "action_name", "request_hash"], :name => "controlleraction_request_index"
    t.index ["controller_name", "action_name", "session_hash"], :name => "controlleraction_session_index"
    t.index ["impressionable_type", "impressionable_id", "ip_address"], :name => "poly_ip_index"
    t.index ["impressionable_type", "impressionable_id", "params"], :name => "poly_params_request_index"
    t.index ["impressionable_type", "impressionable_id", "request_hash"], :name => "poly_request_index"
    t.index ["impressionable_type", "impressionable_id", "session_hash"], :name => "poly_session_index"
    t.index ["impressionable_type", "message", "impressionable_id"], :name => "impressionable_type_message_index"
    t.index ["user_id"], :name => "index_impressions_on_user_id"
  end

  create_table "inquiries", :force => :cascade do |t|
    t.string "title", :null => false
    t.text "content", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string "name"
    t.string "email"
  end

  create_table "notifications", :force => :cascade do |t|
    t.integer "visitor_id", :null => false
    t.integer "visited_id", :null => false
    t.integer "room_id", :null => false
    t.integer "direct_message_id", :null => false
    t.string "action", :null => false
    t.boolean "checked", :default => false, :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "posts", :force => :cascade do |t|
    t.integer "user_id", :null => false
    t.integer "genre_id", :null => false
    t.string "title", :null => false
    t.text "content", :null => false
    t.string "age"
    t.integer "gender", :null => false
    t.string "municipality"
    t.string "image_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer "prefecture_code"
    t.index ["title"], :name => "index_posts_on_title"
  end

  create_table "rooms", :force => :cascade do |t|
    t.string "name", :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => :cascade do |t|
    t.string "email", :default => "", :null => false
    t.string "encrypted_password", :default => "", :null => false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string "name", :null => false
    t.string "name_kana", :null => false
    t.string "nickname", :null => false
    t.integer "gender", :null => false
    t.date "birthday", :null => false
    t.string "postal_code"
    t.string "nearest_station", :null => false
    t.boolean "is_deleted", :default => false, :null => false
    # uid,providerはSNS認証実装用
    t.string "uid"
    t.string "provider"
    t.string "municipality"
    t.integer "prefecture_code"
    t.string "image_id"
    t.index ["email"], :name => "index_users_on_email", :unique => true
    t.index ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true
  end

end
