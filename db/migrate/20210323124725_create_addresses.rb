class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :postcode, null: false
      t.string :prefacture, null: false
      t.string :city, null: false
      t.string :house_number, null: false
      t.string :building

      t.timestamps
    end
  end
end
