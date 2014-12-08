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

ActiveRecord::Schema.define(version: 20141208212017) do

  create_table "bios", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "real_title"
    t.string   "funny_title"
    t.string   "question1"
    t.string   "question2"
    t.string   "question3"
    t.string   "question4"
    t.string   "question5"
    t.text     "answer1"
    t.text     "answer2"
    t.text     "answer3"
    t.text     "answer4"
    t.text     "answer5"
    t.string   "bio_pic"
    t.text     "overview"
  end

  create_table "blogs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.text     "content"
    t.integer  "category"
    t.integer  "author"
    t.string   "blog_picture"
    t.string   "slug"
  end

  create_table "case_studies", force: true do |t|
    t.string   "title"
    t.text     "challenge"
    t.text     "insight"
    t.text     "solution"
    t.text     "result"
    t.text     "quote"
    t.string   "client"
    t.string   "slider1"
    t.string   "slider2"
    t.string   "slider3"
    t.string   "slider4"
    t.string   "slider5"
    t.string   "inset1"
    t.string   "inset2"
    t.string   "inset3"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
