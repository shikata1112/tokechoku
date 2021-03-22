class CreateMakers < ActiveRecord::Migration[6.0]
  def change
    create_table :makers do |t|
      t.string :name, null: false, comment: "メーカー名称"

      t.timestamps
    end
    
    add_index :makers, :name, unique: true
  end
end
