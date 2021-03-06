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

ActiveRecord::Schema.define(:version => 20110427040526) do

  create_table "coordinators", :force => true do |t|
    t.string    "firstname"
    t.string    "lastname"
    t.string    "email"
    t.string    "street"
    t.string    "city"
    t.string    "zipcode"
    t.string    "phone_home"
    t.string    "phone_mobile"
    t.string    "phone_work"
    t.integer   "state_id"
    t.integer   "county_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "active"
  end

  create_table "counties", :force => true do |t|
    t.string    "name"
    t.integer   "state_id"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "delayed_jobs", :force => true do |t|
    t.integer   "priority",   :default => 0
    t.integer   "attempts",   :default => 0
    t.text      "handler"
    t.text      "last_error"
    t.timestamp "run_at"
    t.timestamp "locked_at"
    t.timestamp "failed_at"
    t.string    "locked_by"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "organisers", :force => true do |t|
    t.string    "firstname"
    t.string    "lastname"
    t.string    "email"
    t.string    "phone"
    t.string    "street"
    t.string    "city"
    t.integer   "state_id"
    t.string    "zipcode"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.string    "message"
    t.string    "username"
    t.integer   "item"
    t.string    "table"
    t.integer   "month"
    t.integer   "year"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_histories_on_item_and_table_and_month_and_year"

  create_table "states", :force => true do |t|
    t.string    "name"
    t.string    "abreviation"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string    "email",                               :default => "", :null => false
    t.string    "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string    "reset_password_token"
    t.timestamp "remember_created_at"
    t.integer   "sign_in_count",                       :default => 0
    t.timestamp "current_sign_in_at"
    t.timestamp "last_sign_in_at"
    t.string    "current_sign_in_ip"
    t.string    "last_sign_in_ip"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
