require './bottlespec.rb'

describe Bottle do

 it "should have volume" do
  b = Bottle.new(1)
  b.volume.should eq 1
 end

end
