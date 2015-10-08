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

ActiveRecord::Schema.define(version: 20151008015340) do

  create_table "cockpit_procedures_trainings", force: :cascade do |t|
    t.date     "date_completed"
    t.integer  "trainee_id"
    t.integer  "user_id"
    t.integer  "training_record_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "cockpit_procedures_trainings", ["trainee_id"], name: "index_cockpit_procedures_trainings_on_trainee_id"
  add_index "cockpit_procedures_trainings", ["training_record_id"], name: "index_cockpit_procedures_trainings_on_training_record_id"
  add_index "cockpit_procedures_trainings", ["user_id"], name: "index_cockpit_procedures_trainings_on_user_id"

  create_table "trainees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "identification"
    t.string   "pilot_position"
    t.integer  "status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "training_records", force: :cascade do |t|
    t.string   "type_of_training"
    t.integer  "trainee_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "training_records", ["trainee_id"], name: "index_training_records_on_trainee_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",            null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.integer  "role"
    t.integer  "status"
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "instructor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
