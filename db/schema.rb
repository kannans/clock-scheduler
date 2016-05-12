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

ActiveRecord::Schema.define(version: 20160512070615) do

  create_table "clockwork_database_events", force: :cascade do |t|
    t.integer  "frequency_quantity"
    t.integer  "frequency_period_id"
    t.string   "at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "clockwork_database_events", ["frequency_period_id"], name: "index_clockwork_database_events_on_frequency_period_id"

  create_table "frequency_periods", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_schedulers", force: :cascade do |t|
    t.datetime "event_at"
    t.integer  "frequency"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "task"
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
