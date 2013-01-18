class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name

 has_many :pet_licenses, :foreign_key => :owner_id
 has_many :pets, :through => :pet_licenses

 validates :first_name, :presence => true

 before_create :set_defaults

 scope :mickael, where(:first_name => "Mickael")
 def set_defaults
  last_name.blank? ? self.last_name = "N/A" : last_name
 end

end
