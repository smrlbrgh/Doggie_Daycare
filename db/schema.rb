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

ActiveRecord::Schema.define(version: 20150521154914) do

  create_table "breeds", force: true do |t|
    t.string   "breed"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dogs", force: true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.integer  "breed_id"
    t.date     "dob"
    t.string   "vet"
    t.string   "vet_phone"
    t.boolean  "in_daycare"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "dogs", ["breed_id"], name: "index_dogs_on_breed_id"
  add_index "dogs", ["owner_id"], name: "index_dogs_on_owner_id"

  create_table "owners", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "primary_phone"
    t.string   "secondary_phone"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "emerg_name"
    t.string   "emerg_phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
