class Patient < ActiveRecord::Base
  attr_accessible :dob, :location, :mrn, :name
  has_many :surgeries

  validates :dob, :presence => true
  validates :mrn, :presence => true, :numericality => true, :length => { :is => 6 }
  validates :name, :presence => true
end
