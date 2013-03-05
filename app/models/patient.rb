class Patient < ActiveRecord::Base
  attr_accessible :dob, :location, :mrn, :name
  has_many :cases
end
