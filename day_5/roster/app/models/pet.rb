class Pet < ActiveRecord::Base
  attr_accessible :breed, :name

 has_many :pet_licenses
 has_many :owners, :through => :pet_licenses

 belongs_to :person
end
