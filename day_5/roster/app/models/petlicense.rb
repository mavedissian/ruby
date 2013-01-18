class Petlicense < ActiveRecord::Base
  attr_accessible :license_number, :owner_id, :pet_id

 belongs_to :pet
 belongs_to :owner, :class_name => Person

end
