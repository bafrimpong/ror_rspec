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

ActiveRecord::Schema.define(version: 2021_06_24_013730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "my_friends", force: :cascade do |t|
    t.string "first_name", limit: 100, null: false
    t.string "last_name", limit: 100, null: false
    t.string "street"
    t.string "zip_code", limit: 10
    t.string "city", null: false
    t.string "email", limit: 45, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "latitude", precision: 35, scale: 15
    t.decimal "longitude", precision: 35, scale: 15
    t.string "telephone", limit: 25
    t.string "mobile", limit: 30
  end

end
