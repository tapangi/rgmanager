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

ActiveRecord::Schema.define(:version => 20130219020933) do

  create_table "coach_applications", :force => true do |t|
    t.string   "programming_experience"
    t.string   "intended_gain"
    t.string   "os_experience"
    t.string   "status"
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "coach_applications", ["event_id"], :name => "index_coach_applications_on_event_id"
  add_index "coach_applications", ["status"], :name => "index_coach_applications_on_status"
  add_index "coach_applications", ["user_id"], :name => "index_coach_applications_on_user_id"

  create_table "event_activities", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.date     "date"
    t.time     "start_time"
    t.time     "end_time"
    t.integer  "event_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "event_activities", ["event_id"], :name => "index_event_activities_on_event_id"

  create_table "event_details", :force => true do |t|
    t.integer  "event_id"
    t.string   "lang"
    t.text     "intro_text"
    t.text     "sponsor_intro"
    t.text     "faq"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "event_details", ["lang"], :name => "index_event_details_on_lang"

  create_table "events", :force => true do |t|
    t.date     "start_date"
    t.date     "end_date"
    t.string   "picture"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
    t.integer  "network_id"
    t.boolean  "is_alcohol_served",       :default => false
    t.datetime "applications_open_date"
    t.datetime "applications_close_date"
    t.date     "decision_date"
    t.string   "location_address"
    t.string   "status"
    t.string   "default_lang"
  end

  add_index "events", ["applications_close_date"], :name => "index_events_on_applications_close_date"
  add_index "events", ["applications_open_date"], :name => "index_events_on_applications_open_date"
  add_index "events", ["default_lang"], :name => "index_events_on_default_lang"
  add_index "events", ["end_date"], :name => "index_events_on_end_date"
  add_index "events", ["start_date"], :name => "index_events_on_start_date"
  add_index "events", ["status"], :name => "index_events_on_status"

  create_table "materials", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "network_applications", :force => true do |t|
    t.integer  "user_id"
    t.string   "city"
    t.string   "state_province"
    t.string   "country"
    t.string   "status"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "network_applications", ["status"], :name => "index_network_applications_on_status"
  add_index "network_applications", ["user_id"], :name => "index_network_applications_on_user_id"

  create_table "networks", :force => true do |t|
    t.string   "country_alpha2_code",                                                 :null => false
    t.string   "state_province",                                                      :null => false
    t.string   "city",                                                                :null => false
    t.string   "banner_image"
    t.datetime "created_at",                                                          :null => false
    t.datetime "updated_at",                                                          :null => false
    t.string   "thumbnail_image"
    t.decimal  "latitude",            :precision => 10, :scale => 6, :default => 0.0, :null => false
    t.decimal  "longitude",           :precision => 10, :scale => 6, :default => 0.0, :null => false
    t.boolean  "gmaps"
  end

  create_table "participant_applications", :force => true do |t|
    t.string   "programming_experience"
    t.string   "why_statement"
    t.string   "os"
    t.string   "is_of_alcohol_age"
    t.string   "status"
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
  end

  add_index "participant_applications", ["event_id"], :name => "index_participant_applications_on_event_id"
  add_index "participant_applications", ["is_of_alcohol_age"], :name => "index_participant_applications_on_is_of_alcohol_age"
  add_index "participant_applications", ["status"], :name => "index_participant_applications_on_status"
  add_index "participant_applications", ["user_id"], :name => "index_participant_applications_on_user_id"

  create_table "roles", :force => true do |t|
    t.integer  "authorizable_id"
    t.string   "authorizable_type"
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  add_index "roles", ["authorizable_id"], :name => "index_roles_on_authorizable_id"
  add_index "roles", ["authorizable_type"], :name => "index_roles_on_authorizable_type"

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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.string   "authentication_token"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "identifies_as"
    t.string   "tshirt_size"
    t.string   "dietary_restrictions"
  end

  add_index "users", ["authentication_token"], :name => "index_users_on_authentication_token", :unique => true
  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "volunteer_applications", :force => true do |t|
    t.string   "help_offered"
    t.string   "status"
    t.integer  "event_id"
    t.integer  "user_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "volunteer_applications", ["event_id"], :name => "index_volunteer_applications_on_event_id"
  add_index "volunteer_applications", ["status"], :name => "index_volunteer_applications_on_status"
  add_index "volunteer_applications", ["user_id"], :name => "index_volunteer_applications_on_user_id"

end
