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

ActiveRecord::Schema.define(version: 20141206073319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: true do |t|
    t.string   "common_name"
    t.string   "scientific_name"
    t.string   "image"
    t.text     "description"
    t.string   "country_of_origin"
    t.text     "biological_properties"
    t.text     "domestic_properties"
    t.string   "best_climate"
    t.text     "rearing_info"
    t.text     "diet"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "animals", ["user_id"], name: "index_animals_on_user_id", using: :btree

  create_table "plants", force: true do |t|
    t.string   "common_name",          null: false
    t.string   "scientific_name"
    t.string   "image"
    t.text     "description"
    t.string   "country_of_origin"
    t.text     "botanical_properties"
    t.text     "domestic_properties"
    t.string   "climate"
    t.text     "growing_instructions"
    t.integer  "user_id",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "plants", ["user_id"], name: "index_plants_on_user_id", using: :btree

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
    t.string   "first_name"
    t.string   "last_name"
    t.string   "username"
    t.string   "location"
    t.string   "climate"
    t.string   "short_bio"
    t.text     "long_bio"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
