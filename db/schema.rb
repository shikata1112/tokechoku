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

ActiveRecord::Schema.define(version: 2021_03_19_101701) do

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "last_name", null: false, comment: "姓"
    t.string "first_name", null: false, comment: "名"
    t.string "kana_last_name", null: false, comment: "セイ"
    t.string "kana_first_name", null: false, comment: "メイ"
    t.string "nickname", null: false, comment: "購入者名"
    t.string "email", null: false, comment: "メールアドレス"
    t.string "phone_number", null: false, comment: "電話番号"
    t.string "postcode", null: false, comment: "郵便番号"
    t.string "prefacture", null: false, comment: "都道府県"
    t.string "city", null: false, comment: "市区町村"
    t.string "address", null: false, comment: "番地"
    t.string "building", comment: "ビル・建物名"
    t.string "encrypted_password", null: false, comment: "パスワード"
    t.boolean "is_active", default: true, null: false, comment: "有効性"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
