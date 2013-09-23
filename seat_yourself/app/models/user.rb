class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_presence_of :name

  has_many :reservations
  has_many :restaurants, through: :reservations
end