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

ActiveRecord::Schema.define(version: 20170813221713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "met_departments", force: :cascade do |t|
    t.string   "department_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["department_name"], name: "index_met_departments_on_department_name", unique: true, using: :btree
  end

  create_table "met_objects", force: :cascade do |t|
    t.string   "object_number"
    t.boolean  "is_highlight"
    t.boolean  "is_public_domain"
    t.integer  "object_id"
    t.string   "department"
    t.string   "object_name"
    t.string   "title"
    t.string   "culture"
    t.string   "period"
    t.string   "dynasty"
    t.string   "reign"
    t.string   "portfolio"
    t.string   "artist_role"
    t.string   "artist_prefix"
    t.string   "artist_display_name"
    t.string   "artist_display_bio"
    t.string   "artist_suffix"
    t.string   "artist_alpha_sort"
    t.string   "artist_nationality"
    t.integer  "artist_begin_date"
    t.integer  "artist_end_date"
    t.integer  "object_date"
    t.integer  "object_begin_date"
    t.integer  "object_end_date"
    t.string   "medium"
    t.string   "dimensions"
    t.string   "credit_line"
    t.string   "geography_type"
    t.string   "city"
    t.string   "state"
    t.string   "county"
    t.string   "country"
    t.string   "region"
    t.string   "subregion"
    t.string   "locale"
    t.string   "locus"
    t.string   "excavation"
    t.string   "river"
    t.string   "classification"
    t.string   "rights_and_reproduction"
    t.string   "link_resource"
    t.datetime "metadata_date"
    t.string   "repository"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "image_url"
    t.integer  "met_department_id"
  end

end
