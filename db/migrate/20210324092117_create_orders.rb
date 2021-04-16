class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true, comment: "ユーザーID"
      t.references :watch, null: false, foreign_key: true, comment: "腕時計ID"

      t.integer :billing_amount, null: false, comment: "請求金額（税込）"
      t.string :billing_name, null: false, comment: "請求先名称"
      t.string :billing_phone_number, null: false, comment: "請求先電話番号"
      t.string :billing_postcode, null: false, comment: "請求先郵便番号"
      t.string :billing_prefecture, null: false, comment: "請求先都道府県"
      t.string :billing_city, null: false, comment: "請求先市区町村"
      t.string :billing_house_number, null: false, comment: "請求先番地"
      t.string :billing_building, null: false, comment: "請求先ビル・建物名"

      t.string :delivery_name, null:false, comment: "配送先名称"
      t.string :delivery_postcode, null:false, comment: "配送先郵便番号"
      t.string :delivery_prefecture, null:false, comment: "配送先都道府県"
      t.string :delivery_city, null:false, comment: "配送先市区町村"
      t.string :delivery_house_number, null:false, comment: "配送先番地"
      t.string :delivery_building, null:false, comment: "配送先ビル・建物名"
      t.string :delivery_time, null:false, comment: "お届け希望時間帯"

      t.integer :payment_method, null:false, comment: "支払い方法"
      t.integer :status,  null:false, comment: "ステータス"

      t.timestamps
    end
  end
end
