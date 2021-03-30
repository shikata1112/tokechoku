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

ActiveRecord::Schema.define(version: 2021_03_29_110231) do

  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, comment: "ユーザーID"
    t.string "name", null: false, comment: "宛先名"
    t.string "postcode", null: false, comment: "郵便番号"
    t.string "prefacture", null: false, comment: "都道府県"
    t.string "city", null: false, comment: "市区町村"
    t.string "house_number", null: false, comment: "番地"
    t.string "building", comment: "ビル・建物名"
    t.string "phone_number", null: false, comment: "電話番号"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "admins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", null: false
    t.string "encrypted_password", null: false
    t.integer "admin_number", null: false, comment: "管理者番号"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admin_number"], name: "index_admins_on_admin_number", unique: true
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "cards", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "customer_id", null: false
    t.string "card_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_cards_on_user_id"
  end

  create_table "inquiries", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false, comment: "ユーザー名"
    t.string "email", null: false, comment: "ユーザーアドレス"
    t.string "phone_number", null: false, comment: "ユーザー電話番号"
    t.string "content", null: false, comment: "本文"
    t.boolean "is_completed", default: false, null: false, comment: "解決済みか"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "makers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false, comment: "メーカー名称"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_makers_on_name", unique: true
  end

  create_table "models", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false, comment: "時計モデル名称"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_models_on_name", unique: true
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, comment: "ユーザーID"
    t.bigint "watch_id", null: false, comment: "腕時計ID"
    t.integer "billing_amount", null: false, comment: "請求金額（税込）"
    t.string "billing_name", null: false, comment: "請求先名称"
    t.string "billing_phone_number", null: false, comment: "請求先電話番号"
    t.string "billing_postcode", null: false, comment: "請求先郵便番号"
    t.string "billing_prefacture", null: false, comment: "請求先都道府県"
    t.string "billing_city", null: false, comment: "請求先市区町村"
    t.string "billing_house_number", null: false, comment: "請求先番地"
    t.string "billing_building", null: false, comment: "請求先ビル・建物名"
    t.string "delivery_name", null: false, comment: "配送先名称"
    t.string "delivery_postcode", null: false, comment: "配送先郵便番号"
    t.string "delivery_prefacture", null: false, comment: "配送先都道府県"
    t.string "delivery_city", null: false, comment: "配送先市区町村"
    t.string "delivery_house_number", null: false, comment: "配送先番地"
    t.string "delivery_building", null: false, comment: "配送先ビル・建物名"
    t.string "delivery_time", null: false, comment: "お届け希望時間帯"
    t.integer "payment_method", null: false, comment: "支払い方法"
    t.integer "status", null: false, comment: "ステータス"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
    t.index ["watch_id"], name: "index_orders_on_watch_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "last_name", null: false, comment: "姓"
    t.string "first_name", null: false, comment: "名"
    t.string "kana_last_name", null: false, comment: "セイ"
    t.string "kana_first_name", null: false, comment: "メイ"
    t.string "nickname", null: false, comment: "購入者名"
    t.string "email", null: false, comment: "メールアドレス"
    t.string "birth_date", null: false, comment: "生年月日"
    t.string "phone_number", null: false, comment: "電話番号"
    t.string "postcode", null: false, comment: "郵便番号"
    t.string "prefacture", null: false, comment: "都道府県"
    t.string "city", null: false, comment: "市区町村"
    t.string "house_number", null: false, comment: "番地"
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

  create_table "vendors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "last_name", null: false, comment: "姓"
    t.string "first_name", null: false, comment: "名"
    t.string "kana_last_name", null: false, comment: "セイ"
    t.string "kana_first_name", null: false, comment: "メイ"
    t.string "shop_name", null: false, comment: "店舗名"
    t.text "introduction", comment: "店舗紹介"
    t.string "email", null: false, comment: "メールアドレス"
    t.string "birth_date", null: false, comment: "生年月日"
    t.string "phone_number", null: false, comment: "電話番号"
    t.string "postcode", null: false, comment: "郵便番号"
    t.string "prefacture", null: false, comment: "都道府県"
    t.string "city", null: false, comment: "市区町村"
    t.string "house_number", null: false, comment: "番地"
    t.string "building", comment: "ビル・建物名"
    t.string "encrypted_password", null: false, comment: "パスワード"
    t.boolean "is_active", default: true, null: false, comment: "有効性"
    t.boolean "is_certificated", default: false, null: false, comment: "身分証明済み"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_vendors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_vendors_on_reset_password_token", unique: true
    t.index ["shop_name"], name: "index_vendors_on_shop_name", unique: true
  end

  create_table "watch_lists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, comment: "ユーザーID"
    t.bigint "watch_id", null: false, comment: "腕時計ID"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_watch_lists_on_user_id"
    t.index ["watch_id"], name: "index_watch_lists_on_watch_id"
  end

  create_table "watches", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "maker_id", null: false, comment: "メーカーID"
    t.bigint "model_id", null: false, comment: "モデルID"
    t.string "name", null: false, comment: "商品名"
    t.string "brand", null: false, comment: "ブランド名"
    t.integer "condition", null: false, comment: "コンディション"
    t.string "model_number", null: false, comment: "モデルナンバー"
    t.string "dial", null: false, comment: "文字盤カラー"
    t.string "case_size", null: false, comment: "ケースサイズ"
    t.string "movement", null: false, comment: "ムーブメント"
    t.string "material", null: false, comment: "素材"
    t.string "tax_price", null: false, comment: "販売価格(税込)"
    t.string "warranty_date", null: false, comment: "保証書記載日(年月)"
    t.string "accessory", null: false, comment: "付属品"
    t.text "remarks", null: false, comment: "備考欄"
    t.boolean "credit_card_payment", default: false, null: false, comment: "クレジットカード払いの可否"
    t.boolean "is_active", default: true, null: false, comment: "有効性"
    t.boolean "in_stock", default: true, null: false, comment: "在庫の有無"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["maker_id"], name: "index_watches_on_maker_id"
    t.index ["model_id"], name: "index_watches_on_model_id"
    t.index ["name", "brand", "model_number"], name: "index_watches_on_name_and_brand_and_model_number"
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "cards", "users"
  add_foreign_key "orders", "users"
  add_foreign_key "orders", "watches"
  add_foreign_key "watch_lists", "users"
  add_foreign_key "watch_lists", "watches"
  add_foreign_key "watches", "makers"
  add_foreign_key "watches", "models"
end
