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

ActiveRecord::Schema.define(version: 20180131074540) do

  create_table "subjects", force: :cascade do |t|
    t.string   "subjid"
    t.string   "subjname"
    t.integer  "divclass"
    t.integer  "subjpoint"
    t.string   "teacher"
    t.string   "tabletime"
    t.integer  "limitst"
    t.string   "campus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "successes", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "chasi"
    t.integer  "time_1",     limit: 8
    t.integer  "time_2",     limit: 8
    t.integer  "time_3",     limit: 8
    t.integer  "time_4",     limit: 8
    t.integer  "time_5",     limit: 8
    t.integer  "time_6",     limit: 8
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "tts", force: :cascade do |t|
    t.integer  "mornig_time_st",  limit: 8
    t.integer  "mornig_time_end", limit: 8
    t.integer  "chch"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.boolean  "admin"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.datetime "last_sign_out_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.datetime "last_seen"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
