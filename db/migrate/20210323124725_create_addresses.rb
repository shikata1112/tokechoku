class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true, comment: "ユーザーID"
      t.string :name, null: false, comment: "宛先名"
      t.string :postcode, null: false, comment: "郵便番号"
      t.string :prefacture, null: false, comment: "都道府県"
      t.string :city, null: false, comment: "市区町村"
      t.string :house_number, null: false, comment: "番地"
      t.string :building, comment: "ビル・建物名"
      t.string :phone_number, null: false, comment: "電話番号"

      t.timestamps
    end
  end
end
