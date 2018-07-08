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

ActiveRecord::Schema.define(version: 20180708180814) do

  create_table "cartypes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "facilities_rents", id: false, force: :cascade do |t|
    t.integer "facility_id", null: false
    t.integer "rent_id", null: false
    t.index ["facility_id"], name: "index_facilities_rents_on_facility_id"
    t.index ["rent_id"], name: "index_facilities_rents_on_rent_id"
  end

  create_table "facilities_rents_relationships", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "idiomas", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages_rents", id: false, force: :cascade do |t|
    t.integer "language_id", null: false
    t.integer "rent_id", null: false
    t.index ["language_id"], name: "index_languages_rents_on_language_id"
    t.index ["rent_id"], name: "index_languages_rents_on_rent_id"
  end

  create_table "languages_taxis", id: false, force: :cascade do |t|
    t.integer "language_id", null: false
    t.integer "taxi_id", null: false
    t.index ["language_id"], name: "index_languages_taxis_on_language_id"
    t.index ["taxi_id"], name: "index_languages_taxis_on_taxi_id"
  end

  create_table "languages_tours", id: false, force: :cascade do |t|
    t.integer "language_id", null: false
    t.integer "tour_id", null: false
    t.index ["language_id"], name: "index_languages_tours_on_language_id"
    t.index ["tour_id"], name: "index_languages_tours_on_tour_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rents", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.integer "rooms"
    t.integer "bathrooms"
    t.decimal "dbl_price"
    t.decimal "tpl_price"
    t.string "qpl_price"
    t.string "home"
    t.decimal "X"
    t.decimal "Y"
    t.string "features"
    t.boolean "tripadvisor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "location_id"
    t.index ["location_id"], name: "index_rents_on_location_id"
  end

  create_table "rents_services", id: false, force: :cascade do |t|
    t.integer "service_id", null: false
    t.integer "rent_id", null: false
    t.index ["rent_id"], name: "index_rents_services_on_rent_id"
    t.index ["service_id"], name: "index_rents_services_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "servicios", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "taxis", force: :cascade do |t|
    t.string "driver_name"
    t.integer "places"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "taxi_id"
    t.integer "cartype_id"
    t.index ["cartype_id"], name: "index_taxis_on_cartype_id"
    t.index ["taxi_id"], name: "index_taxis_on_taxi_id"
  end

  create_table "tours", force: :cascade do |t|
    t.string "name"
    t.string "facilities"
    t.string "description"
    t.string "time"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
