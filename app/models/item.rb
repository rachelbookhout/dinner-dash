class Item < ActiveRecord::Base
  has_many :orders
  has_many :orders, :through :ItemsinOrders
  has_many :carts, :through :ItemsinCart
end
