module NamedThing
 attr_accessor :name

 def initialize(name="no name")
  @name = name
 end

end

class blah
 include NamedThing

end
