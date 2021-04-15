# frozen_string_literal: true

class DeviseCreateVendors < ActiveRecord::Migration[6.0]
  def change
    create_table :vendors do |t|
      ## Database authenticatable

      t.string :last_name, null: false, comment: "姓"
      t.string :first_name, null: false, comment: "名"
      t.string :kana_last_name, null: false, comment: "セイ"
      t.string :kana_first_name, null: false, comment: "メイ"
      t.string :shop_name, null: false, comment: "店舗名"
      t.text   :introduction, comment: "店舗紹介"
      t.string :email, null: false, default: "", comment: "メールアドレス"
      t.date :birth_date, null: false, comment: "生年月日"
      t.string :phone_number, null: false, comment: "電話番号"
      t.string :postcode, null: false, comment: "郵便番号"
      t.integer :prefecture_code, null: false, comment: "都道府県コード"
      t.string :city, null: false, comment: "市区町村"
      t.string :house_number, null: false, comment: "番地"
      t.string :building, comment: "ビル・建物名"
      t.string :encrypted_password, null: false, default: "", comment: "パスワード"
      t.boolean :is_active, null: false, default: true, comment: "有効性"
      t.boolean :is_certificated, null: false, default: false, comment: "身分証明済み"

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false

      ## Confirmable
      t.string   :confirmation_token
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :unconfirmed_email
    end
    
    add_index :vendors, :email,                unique: true
    add_index :vendors, :reset_password_token, unique: true
  end
end
