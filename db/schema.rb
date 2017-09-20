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

ActiveRecord::Schema.define(version: 20170920032019) do

  create_table "planets", force: :cascade do |t|
    t.string "planet_name"
    t.float "planet_mass"
    t.float "rotation_period"
    t.float "day_length"
    t.float "orbital_period"
    t.float "distance_from_sun"
    t.float "mean_temperature"
    t.integer "number_of_moons"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
