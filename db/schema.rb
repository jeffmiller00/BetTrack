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

ActiveRecord::Schema.define(version: 20130913040935) do

  create_table "bet_results", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bet_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bets", force: true do |t|
    t.date     "date"
    t.integer  "bet_type_id"
    t.integer  "sport_id"
    t.integer  "source_id"
    t.string   "description"
    t.float    "amount"
    t.float    "spread"
    t.string   "won"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "input_type_id"
    t.integer  "bet_result_id"
  end

  add_index "bets", ["bet_result_id"], name: "index_bets_on_bet_result_id", using: :btree
  add_index "bets", ["bet_type_id"], name: "index_bets_on_bet_type_id", using: :btree
  add_index "bets", ["input_type_id"], name: "index_bets_on_input_type_id", using: :btree
  add_index "bets", ["source_id"], name: "index_bets_on_source_id", using: :btree
  add_index "bets", ["sport_id"], name: "index_bets_on_sport_id", using: :btree

  create_table "input_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", force: true do |t|
    t.string   "name"
    t.string   "website"
    t.string   "twitter"
    t.float    "trust"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "abbrev"
  end

  create_table "sports", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "abbrev"
  end

end
