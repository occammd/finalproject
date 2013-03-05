class User < ActiveRecord::Base
  attr_accessible :cell_phone, :email, :name, :password, :staff_type
  has_many :cases
end

