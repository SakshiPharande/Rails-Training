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

ActiveRecord::Schema[7.2].define(version: 2025_01_22_025044) do
  create_table "adoption_requests", force: :cascade do |t|
    t.integer "pet_id", null: false
    t.integer "breed_id", null: false
    t.datetime "adoption_date"
    t.integer "u_id", null: false
    t.string "address"
    t.string "phone_no"
    t.string "email"
    t.integer "status", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breed_id"], name: "index_adoption_requests_on_breed_id"
    t.index ["pet_id"], name: "index_adoption_requests_on_pet_id"
  end

  create_table "breeds", force: :cascade do |t|
    t.string "breed_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.integer "breed_id", null: false
    t.integer "age"
    t.integer "gender", default: 2
    t.string "temperament"
    t.boolean "vaccination_status", default: false
    t.text "medical_history"
    t.integer "status", default: 0
    t.integer "category_id", null: false
    t.text "common_health_issues"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breed_id"], name: "index_pets_on_breed_id"
    t.index ["category_id"], name: "index_pets_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email", null: false
    t.string "phone_no"
    t.string "password"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "adoption_requests", "breeds"
  add_foreign_key "adoption_requests", "pets"
  add_foreign_key "adoption_requests", "users", column: "u_id"
  add_foreign_key "pets", "breeds"
  add_foreign_key "pets", "breeds"
  add_foreign_key "pets", "categories"
  add_foreign_key "pets", "categories"
end
