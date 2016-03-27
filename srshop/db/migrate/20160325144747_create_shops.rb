class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.text :name
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
