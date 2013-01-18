class Person < ActiveRecord::Base
  attr_accessible :first_name, :last_name

 validates :first_name, :presence => true

 before_create :set_defaults

 def set_defaults
  last_name.blank? ? self.last_name = "N/A" : last_name
 end

end
