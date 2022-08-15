# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_08_15_145935) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "egg_groups", force: :cascade do |t|
    t.string "pokemon_id"
    t.string "name"
    t.string "group_one"
    t.string "group_two"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pokemons", force: :cascade do |t|
    t.integer "number"
    t.integer "code"
    t.string "name"
    t.string "type_one"
    t.string "type_two"
    t.string "colour"
    t.string "ability_one"
    t.string "ability_two"
    t.string "ability_hidden"
    t.integer "generation"
    t.boolean "legendary"
    t.boolean "mega_evo"
    t.float "height"
    t.float "weight"
    t.integer "hp"
    t.integer "atk"
    t.integer "def"
    t.integer "sp_atk"
    t.integer "sp_def"
    t.integer "spd"
    t.integer "total_stat"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img_source"
  end

end
