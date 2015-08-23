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

ActiveRecord::Schema.define(version: 20150823124226) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "profiles", force: :cascade do |t|
    t.string   "city"
    t.string   "state"
    t.integer  "zip_code"
    t.string   "pizza_beer"
    t.string   "concept_reality"
    t.string   "fact_fiction"
    t.string   "theory_practice"
    t.string   "moms_dads"
    t.string   "sandles_socks"
    t.integer  "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "europe_paris"
    t.string   "profile_photo"
    t.string   "drugs"
    t.string   "trucks"
    t.string   "sleater_kelly"
    t.string   "isp"
    t.string   "crew"
    t.string   "more_less"
    t.string   "reggae_mouse"
    t.string   "jobs"
    t.string   "pets_cats"
    t.string   "red_white"
    t.string   "sport_ball"
    t.string   "meat_murder"
    t.string   "art_commerce"
    t.string   "butler_judith"
    t.string   "fleetwood_mcdonalds"
    t.string   "skate_die"
    t.string   "sanders"
    t.string   "midwest_east"
    t.string   "modest_eek"
    t.string   "pride_prejudice"
    t.string   "dwi_dui"
    t.string   "show_tell"
    t.string   "pat_vanna"
  end

  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "user_name"
    t.string   "profile_photo"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "profiles", "users"
end
