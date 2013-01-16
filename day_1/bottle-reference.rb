class Bottle

 attr_accessor :material

 #reference
 #attr_reader
 #attr_writer

 def initialize(v, material)
  @volume = v
  @material = material
 end

 # Reader
 def volume
  @volume
 end

 # Writer
 def volume=(v)
  @volume = v
 end

end
