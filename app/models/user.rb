class User < ActiveRecord::Base
  attr_accessible :cell_phone, :email, :name, :password, :staff_type
  has_many :surgeries

  validates :password, :presence => true
  validates :staff_type, :presence=>true, :inclusion => {:in => 1..3}
  validates :email, :format => { :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/, :message=> 'Not a valid email.' }
  
  validates :cell_phone, :phone_number => true

  def Surgeon
  	1
  end
  def Anesthesiologist
  	2
  end
  def Nurse
  	3
  end
  def DataEntry
  	4
  end
end

