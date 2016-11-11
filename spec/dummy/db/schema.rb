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

ActiveRecord::Schema.define(version: 20161111021217) do

  create_table "bluepan_rails_provinces", force: :cascade do |t|
    t.integer  "external_id"
    t.string   "name_en"
    t.string   "name_cn"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "bluepan_rails_provinces", ["external_id"], name: "index_bluepan_rails_provinces_on_external_id"

end