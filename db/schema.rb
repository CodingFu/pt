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

ActiveRecord::Schema.define(version: 20131225141304) do

  create_table "articles", force: true do |t|
    t.string   "name"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lessons", force: true do |t|
    t.integer  "subject_id"
    t.string   "name"
    t.string   "kind"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lessons", ["subject_id"], name: "index_lessons_on_subject_id"

  create_table "subjects", force: true do |t|
    t.integer  "owner_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "subjects", ["owner_id"], name: "index_subjects_on_owner_id"

  create_table "task_assignments", force: true do |t|
    t.integer  "task_id"
    t.integer  "user_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "task_assignments", ["task_id"], name: "index_task_assignments_on_task_id"
  add_index "task_assignments", ["user_id"], name: "index_task_assignments_on_user_id"

  create_table "tasks", force: true do |t|
    t.integer  "lesson_id"
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tasks", ["lesson_id"], name: "index_tasks_on_lesson_id"

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
    t.boolean  "is_teacher"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.integer  "course"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
