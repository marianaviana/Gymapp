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

ActiveRecord::Schema.define(version: 20170510091326) do

  create_table "assessments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "client_id"
    t.integer  "employee_id"
    t.float    "bodyfat",              limit: 24
    t.float    "ideal_max",            limit: 24
    t.float    "ideal_min",            limit: 24
    t.float    "weight",               limit: 24
    t.float    "height",               limit: 24
    t.float    "ideal_min_weight",     limit: 24
    t.float    "ideal_max_weight",     limit: 24
    t.float    "fat_weight",           limit: 24
    t.float    "lean_body_mass",       limit: 24
    t.float    "fat_body_mass",        limit: 24
    t.integer  "tricipital"
    t.integer  "peitoral"
    t.integer  "subescapular"
    t.integer  "axilar_media"
    t.integer  "suprailiaca"
    t.integer  "abdominal"
    t.integer  "coxa"
    t.float    "neck",                 limit: 24
    t.float    "shoulder",             limit: 24
    t.float    "chest",                limit: 24
    t.float    "waist",                limit: 24
    t.float    "abdomen",              limit: 24
    t.float    "hip",                  limit: 24
    t.string   "right_arm"
    t.string   "left_arm"
    t.string   "right_forearm"
    t.string   "left_forearm"
    t.float    "right_thigh",          limit: 24
    t.float    "left_thigh",           limit: 24
    t.float    "right_calf",           limit: 24
    t.float    "left_calf",            limit: 24
    t.string   "result"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "type"
    t.date     "next_assessment_date"
  end

  create_table "cycles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "index"
    t.integer  "gymcard_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "equipment", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "quantity"
    t.date     "aquisition_date"
    t.float    "weight",          limit: 24
    t.float    "max_weight",      limit: 24
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "gymcards", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "employee_id"
    t.integer  "client_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "name"
    t.boolean  "active",      default: true
  end

  create_table "icqs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "min",        limit: 24
    t.float    "max",        limit: 24
    t.string   "message"
    t.integer  "age_min"
    t.integer  "age_max"
    t.string   "gender"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "imcs", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.float    "min",        limit: 24
    t.float    "max",        limit: 24
    t.string   "message"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "resource_type"
    t.integer  "resource_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id", using: :btree
    t.index ["name"], name: "index_roles_on_name", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email",                                 default: "", null: false
    t.string   "encrypted_password",                    default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         default: 0,  null: false
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
    t.text     "disabilities",            limit: 65535
    t.string   "blood_type"
    t.text     "allergy",                 limit: 65535
    t.text     "obs",                     limit: 65535
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
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "users_roles", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "user_id"
    t.integer "role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id", using: :btree
  end

  create_table "workouts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.integer  "serie"
    t.integer  "sequence"
    t.integer  "load"
    t.text     "obs",          limit: 65535
    t.integer  "equipment_id"
    t.integer  "cycle_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

end
