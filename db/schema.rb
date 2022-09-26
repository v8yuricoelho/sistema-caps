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

ActiveRecord::Schema.define(version: 2020_08_19_141035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "cnes_id"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.index ["cnes_id"], name: "index_agents_on_cnes_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "patient_id"
    t.bigint "cnes_id"
    t.string "to_hour"
    t.string "from_hour"
    t.string "description"
    t.index ["cnes_id"], name: "index_appointments_on_cnes_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "appointments_professionals", id: false, force: :cascade do |t|
    t.bigint "professional_id", null: false
    t.bigint "appointment_id", null: false
    t.index ["appointment_id", "professional_id"], name: "index_profs_appts_on_appointment_id_and_professional_id"
    t.index ["professional_id", "appointment_id"], name: "index_profs_appts_on_professional_id_and_appointment_id"
  end

  create_table "cid10s", force: :cascade do |t|
    t.string "code"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "cid10s_patients", id: false, force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "cid10_id", null: false
    t.index ["cid10_id", "patient_id"], name: "index_cid10s_patients_on_cid10_id_and_patient_id"
    t.index ["patient_id", "cid10_id"], name: "index_cid10s_patients_on_patient_id_and_cid10_id"
  end

  create_table "cnes", force: :cascade do |t|
    t.integer "code"
    t.string "unity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "professionals_id"
    t.index ["professionals_id"], name: "index_cnes_on_professionals_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "medical_record_number"
    t.string "name"
    t.date "birthdate"
    t.date "admission_date"
    t.integer "age"
    t.string "mother_name"
    t.string "father_name"
    t.string "sus_card"
    t.string "cpf"
    t.string "rg"
    t.string "adress"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "cnes_id"
    t.bigint "agent_id"
    t.integer "status"
    t.integer "gender"
    t.integer "marital_status"
    t.index ["agent_id"], name: "index_patients_on_agent_id"
    t.index ["cnes_id"], name: "index_patients_on_cnes_id"
  end

  create_table "patients_psychoative_substances", id: false, force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "psychoative_substance_id", null: false
    t.index ["patient_id", "psychoative_substance_id"], name: "index_patients_psubs_on_patient_id_and_psychoative_substance_id"
    t.index ["psychoative_substance_id", "patient_id"], name: "index_patients_psubs_on_psychoative_substance_id_and_patient_id"
  end

  create_table "professionals", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "function"
    t.string "email"
    t.string "phone"
    t.string "address"
    t.bigint "cnes_id"
    t.index ["cnes_id"], name: "index_professionals_on_cnes_id"
  end

  create_table "psychoative_substances", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
  end

end
