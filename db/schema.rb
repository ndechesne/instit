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

ActiveRecord::Schema.define(:version => 20130128203517) do

  create_table "classrooms", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
    t.string   "state"
  end

  create_table "classrooms_matieres", :id => false, :force => true do |t|
    t.integer "classroom_id"
    t.integer "matiere_id"
  end

  create_table "classrooms_students", :id => false, :force => true do |t|
    t.integer "classroom_id"
    t.integer "student_id"
  end

  create_table "controles", :force => true do |t|
    t.datetime "date"
    t.integer  "matiere_id"
    t.decimal  "notemax"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "name"
    t.integer  "classroom_id"
  end

  create_table "matieres", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.integer  "classroom_id"
    t.integer  "user_id"
  end

  create_table "notes", :force => true do |t|
    t.decimal  "note"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.integer  "student_id"
    t.text     "comment"
    t.integer  "controle_id"
  end

  create_table "students", :force => true do |t|
    t.string   "lastName"
    t.string   "firstName"
    t.date     "birth"
    t.text     "addr"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "gender"
    t.integer  "user_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "name"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
