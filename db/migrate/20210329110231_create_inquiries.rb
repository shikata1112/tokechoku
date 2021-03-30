class CreateInquiries < ActiveRecord::Migration[6.0]
  def change
    create_table :inquiries do |t|
      t.string :name, null: false, comment: "ユーザー名"
      t.string :email, null: false, comment: "ユーザーアドレス"
      t.string :phone_number, null: false, comment: "ユーザー電話番号"
      t.string :content, null: false, comment: "本文"
      t.boolean :is_completed, null: false, default: false, comment: "解決済みか"

      t.timestamps
    end
  end
end
