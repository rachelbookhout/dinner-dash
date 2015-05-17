class Item < ActiveRecord::Base
  has_many :orders
  has_many :orders, :through :ItemsinOrders
  has_many :carts, :through :ItemsinCart
  belongs_to :category

  validates :tite, presence:true
  validates :price, presence:true
  validates :description, presence:true
  validates :title, uniqueness:true
  validates :title, format: { with: /\A[a-zA-Z]+\z/,
    message: "Title only allows letters" }
    validates :description, format: { with: /\A[a-zA-Z]+\z/,
    message: "Description only allows letters" }
  validates :price, numericality: true
  validates :price, numericality: { greater_than: 0 }
end
