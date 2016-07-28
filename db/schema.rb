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

ActiveRecord::Schema.define(version: 20160728215610) do

  create_table "castings", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_castings_on_movie_id"
    t.index ["person_id"], name: "index_castings_on_person_id"
  end

  create_table "classifyings", force: :cascade do |t|
    t.integer  "species_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_classifyings_on_movie_id"
    t.index ["species_id"], name: "index_classifyings_on_species_id"
  end

  create_table "drivings", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "vehicle_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_drivings_on_movie_id"
    t.index ["vehicle_id"], name: "index_drivings_on_vehicle_id"
  end

  create_table "films", force: :cascade do |t|
    t.string   "title"
    t.text     "crawl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "flyings", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "starship_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["movie_id"], name: "index_flyings_on_movie_id"
    t.index ["starship_id"], name: "index_flyings_on_starship_id"
  end

  create_table "movies", force: :cascade do |t|
    t.string   "writer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nameings", force: :cascade do |t|
    t.integer  "movie_id"
    t.integer  "film_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_nameings_on_film_id"
    t.index ["movie_id"], name: "index_nameings_on_movie_id"
  end

  create_table "people", force: :cascade do |t|
    t.string   "name"
    t.string   "gender"
    t.string   "birth"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "planets", force: :cascade do |t|
    t.string   "name"
    t.string   "climate"
    t.string   "terrain"
    t.string   "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.integer  "planet_id"
    t.integer  "movie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["movie_id"], name: "index_settings_on_movie_id"
    t.index ["planet_id"], name: "index_settings_on_planet_id"
  end

  create_table "species", force: :cascade do |t|
    t.string   "name"
    t.string   "classification"
    t.string   "lifespan"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "starships", force: :cascade do |t|
    t.string   "name"
    t.string   "passangers"
    t.string   "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicles", force: :cascade do |t|
    t.string   "name"
    t.string   "passengers"
    t.string   "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
