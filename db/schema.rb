# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_07_28_033104) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "name", limit: 75, null: false
    t.string "location", limit: 30, null: false
    t.string "description", limit: 750, null: false
    t.datetime "date", null: false
    t.integer "duration", null: false
    t.string "presenter", limit: 75, null: false
    t.string "degree", limit: 100
    t.boolean "is_english", null: false
    t.boolean "is_domestic", null: false
    t.boolean "is_common", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
