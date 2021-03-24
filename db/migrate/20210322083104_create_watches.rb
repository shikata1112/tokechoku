class CreateWatches < ActiveRecord::Migration[6.0]
  def change
    create_table :watches do |t|

      t.references :maker, null: false, foreign_key: true, comment: "メーカーID"
      t.references :model, null: false, foreign_key: true, comment: "モデルID"
      t.string :name, null: false, comment: "商品名"
      t.string :brand, null: false, comment: "ブランド名"
      t.integer :condition, null: false, comment: "コンディション"
      t.string :model_number, null: false ,comment: "モデルナンバー" 
      t.string :dial, null: false, comment: "文字盤カラー"
      t.string :case_size, null: false, comment: "ケースサイズ"
      t.string :movement, null: false, comment: "ムーブメント"
      t.string :material, null: false, comment: "素材"
      t.string :tax_price, null: false, comment: "販売価格(税込)"
      t.string :warranty_date, null: false, comment: "保証書記載日(年月)"
      t.string :accessory, null: false, comment: "付属品"
      t.text :remarks, null: false, comment: "備考欄"
      t.boolean :credit_card_payment, null: false, default: false, comment: "クレジットカード払いの可否"
      t.boolean :is_active, null: false, default: true, comment: "有効性"
      t.boolean :in_stock ,null: false, default: true, comment: "在庫の有無"
      t.timestamps
    end

    add_index :watches, [:name, :brand, :model_number]
  end
end
