class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.references :maker, null: false, foreign_key: true, comment: "メーカーID"
      t.string :name, null: false, comment: "時計モデル名称"

      t.timestamps
    end

    add_index :models, :name, unique: true
  end
end
