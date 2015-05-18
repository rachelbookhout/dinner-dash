class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders
  has_one :cart
  validates :email, presence: true
  validates :email, uniqueness:true
  validates :fullname, , format: { with: /\A[a-zA-Z]+\z/,
    message: "Name needs to be filled out" }
end
