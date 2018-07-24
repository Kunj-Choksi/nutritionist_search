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

ActiveRecord::Schema.define(version: 2018_07_18_122759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "master_cities", force: :cascade do |t|
    t.string "name"
    t.integer "status_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "master_specialities", force: :cascade do |t|
    t.string "name"
    t.text "description", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nutritionist_nutritionist_speciality_rels", force: :cascade do |t|
    t.integer "nutritionist_id"
    t.integer "speciality_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nutritionist_profiles", force: :cascade do |t|
    t.string "name"
    t.string "mobile_no"
    t.string "email", default: "", null: false
    t.string "counsultation_fees"
    t.integer "experience"
    t.text "work_history"
    t.integer "gender_id"
    t.datetime "dob"
    t.text "about"
    t.text "awards"
    t.integer "ntuitive_user_id"
    t.integer "city_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar_file_name"
    t.string "avatar_content_type"
    t.integer "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

end
