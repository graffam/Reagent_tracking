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

ActiveRecord::Schema.define(version: 20141211205217) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "kits", force: true do |t|
    t.string "kitname", null: false
  end

  create_table "listitems", force: true do |t|
    t.integer "order_id", null: false
    t.integer "kit_id"
    t.integer "amount"
  end

  create_table "machines", force: true do |t|
    t.string "machinename", null: false
  end

  create_table "mkcs", force: true do |t|
    t.integer "kit_id",     null: false
    t.integer "machine_id", null: false
  end

  create_table "orders", force: true do |t|
    t.integer  "user_id",    null: false
    t.string   "comment"
    t.string   "neededby"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string "username", null: false
    t.string "rights",   null: false
  end

end
