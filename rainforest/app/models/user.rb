class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :name

  has_many :reviews
  # has_many :products, through: :reviews
  has_and_belongs_to_many :products, join_table: "likes"
end