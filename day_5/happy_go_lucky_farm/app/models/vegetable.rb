class Vegetable < ActiveRecord::Base
  attr_accessible :description, :name, :price_per_unit, :unit
end
