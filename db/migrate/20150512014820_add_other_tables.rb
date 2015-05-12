class AddOtherTables < ActiveRecord::Migration
  def change
    add_column :users, :username, :string
    add_column :users, :street_address, :string
    add_column :users, :state, :string
    add_column :users, :zipcode, :integer
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string


   create_table :carts do |t|
    t.integer :user_id
    t.integer :total
   end

   create_table :itemsinCarts do |t|
      t.integer :item_id
      t.integer :cart_id
   end

   create_table :orders do |t|
    t.string :status
    t.integer :total
    t.integer :user_id
    t.timestamps
   end

   create_table :itemsinOrders do |t|
    t.integer :item_id
    t.integer :order_id
    t.timestamps
   end

   create_table :restaurants do |t|
    t.string :name
    t.text :description
    t.string :url
   end

   create_table :categories do |t|
    t.string :name
   end
  end
end
