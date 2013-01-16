TAX = 0.05
$hello = "Hello"

class Bottle

 BOTTLE_TAX = 0.85
 @@total_bottles = 0 

 attr_accessor :volume
 attr_reader :material

 def initialize(v, material)
  @@total_bottles += 1 
  @volume = v
  @material = material
 end

 def + (other_bottle)
  @volume +other_bottle.volume
 end
 
 # seld referes to the class Bottle could use --> def Bottle.total_bottles
 def self.total_bottles
  @@total_bottles
 end

end
