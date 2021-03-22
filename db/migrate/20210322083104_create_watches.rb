class CreateWatches < ActiveRecord::Migration[6.0]
  def change
    create_table :watches do |t|

      t.timestamps
    end
  end
end
