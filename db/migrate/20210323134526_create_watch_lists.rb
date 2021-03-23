class CreateWatchLists < ActiveRecord::Migration[6.0]
  def change
    create_table :watch_lists do |t|
      t.references :user, null: false, foreign_key: true, comment: "ユーザーID"
      t.references :watch, null: false, foreign_key: true, comment: "腕時計ID"

      t.timestamps
    end
  end
end
