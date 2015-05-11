class AddItemsTable < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :category_id, null: false
      t.string :name
      t.text :description
      t.string :status
      t.integer :price
      t.string :photo
      t.timestamps
    end
  end
end
