# frozen_string_literal: true

class DeviseCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      ## Database authenticatable

      t.string :last_name, null: false, comment: "姓"
      t.string :first_name, null: false, comment: "名"
      t.string :kana_last_name, null: false, comment: "セイ"
      t.string :kana_first_name, null: false, comment: "メイ"
      t.string :nickname, null: false, comment: "購入者名"
      t.string :email, null: false, comment: "メールアドレス"
      t.string :birth_date, null: false, comment: "生年月日"
      t.string :phone_number, null: false, comment: "電話番号"
      t.string :postcode, null: false, comment: "郵便番号"
      t.string :prefecture, null: false, comment: "都道府県"
      t.string :city, null: false, comment: "市区町村"
      t.string :house_number, null: false, comment: "番地"
      t.string :building, comment: "ビル・建物名"
      t.string :encrypted_password, null: false, comment: "パスワード"
      t.boolean :is_active, null: false, default: true, comment: "有効性"

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
