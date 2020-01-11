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

ActiveRecord::Schema.define(version: 2020_01_11_200745) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.string "medicine_name"
    t.float "medicine_dose"
    t.string "medicine_dosage"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "professional_name"
    t.string "professional_function"
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "cid10s", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.string "category"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cnes", force: :cascade do |t|
    t.integer "code"
    t.string "unity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "patient_id"
    t.index ["patient_id"], name: "index_cnes_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "medical_record_number"
    t.string "name"
    t.string "gender"
    t.date "birthdate"
    t.date "admission_date"
    t.integer "age"
    t.string "civil_status"
    t.string "mother_name"
    t.string "father_name"
    t.string "sus_card"
    t.string "cpf"
    t.string "rg"
    t.string "county"
    t.string "adress"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "psychoative_substances"
    t.bigint "cnes_id"
    t.index ["cnes_id"], name: "index_patients_on_cnes_id"
  end

  create_table "patients_cid10s", id: false, force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "cid10_id"
    t.index ["cid10_id"], name: "index_patients_cid10s_on_cid10_id"
    t.index ["patient_id"], name: "index_patients_cid10s_on_patient_id"
  end

end
