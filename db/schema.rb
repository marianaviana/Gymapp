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

ActiveRecord::Schema.define(version: 20170621163533) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assessments", force: :cascade do |t|
    t.integer  "client_id"
    t.integer  "employee_id"
    t.float    "bodyfat"
    t.float    "ideal_max"
    t.float    "ideal_min"
    t.float    "weight"
    t.float    "height"
    t.float    "ideal_min_weight"
    t.float    "ideal_max_weight"
    t.float    "fat_weight"
    t.float    "lean_body_mass"
    t.float    "fat_body_mass"
    t.integer  "tricipital"
    t.integer  "peitoral"
    t.integer  "subescapular"
    t.integer  "axilar_media"
    t.integer  "suprailiaca"
    t.integer  "abdominal"
    t.integer  "coxa"
    t.float    "neck"
    t.float    "shoulder"
    t.float    "chest"
    t.float    "waist"
    t.float    "abdomen"
    t.float    "hip"
    t.string   "right_arm"
    t.string   "left_arm"
    t.string   "right_forearm"
    t.string   "left_forearm"
    t.float    "right_thigh"
    t.float    "left_thigh"
    t.float    "right_calf"
    t.float    "left_calf"
    t.string   "result"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "type"
    t.date     "next_assessment_date"
    t.boolean  "done",                 default: false
  end

  create_table "cycles", force: :cascade do |t|
    t.integer  "index"
    t.integer  "gymcard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "equipment", force: :cascade do |t|
    t.string   "name"
    t.integer  "quantity"
    t.date     "aquisition_date"
    t.float    "weight"
    t.float    "max_weight"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "gymcards", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "client_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "name"
    t.boolean  "active",      default: true
  end

  create_table "icqs", force: :cascade do |t|
    t.float    "min"
    t.float    "max"
    t.string   "message"
    t.integer  "age_min"
    t.integer  "age_max"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imcs", force: :cascade do |t|
    t.float    "min"
    t.float    "max"
    t.string   "message"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                              default: "",    null: false
    t.string   "encrypted_password",                 default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                      default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "name"
    t.string   "position"
    t.string   "gender"
    t.date     "birth_date"
    t.string   "rg"
    t.string   "cpf"
    t.string   "address"
    t.string   "telephone"
    t.text     "disabilities"
    t.string   "blood_type"
    t.text     "allergy"
    t.text     "obs"
    t.date     "subscription_date"
    t.date     "payment_date"
    t.date     "admission_date"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "type"
    t.boolean  "admin",                              default: false
    t.string   "authentication_token",    limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true, using: :btree
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "name"
    t.integer  "serie"
    t.integer  "sequence"
    t.integer  "load"
    t.text     "obs"
    t.integer  "equipment_id"
    t.integer  "cycle_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
