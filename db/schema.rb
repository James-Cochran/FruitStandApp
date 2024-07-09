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

ActiveRecord::Schema[7.1].define(version: 2024_07_05_142838) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fruit_stands", force: :cascade do |t|
    t.integer "number_of_employees"
    t.string "name"
    t.boolean "in_stock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fruits", force: :cascade do |t|
    t.bigint "fruit_stand_id", null: false
    t.string "name"
    t.integer "quantity"
    t.boolean "is_citrus"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fruit_stand_id"], name: "index_fruits_on_fruit_stand_id"
  end

  add_foreign_key "fruits", "fruit_stands"
end
