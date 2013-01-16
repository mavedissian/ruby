load 'vehicles.rb'

1.9.3-p362 :003 > $vehicles.inject(0){|total_wheels, v| total_wheels += v[:wheels]}
 => 10 

1.9.3-p362 :004 > $vehicles.inject([]){|all_classes, v| all_classes += v[:classes]}.uniq
 => [:ground, :water, :air] 

1.9.3-p362 :008 >   $vehicles.select{|v| v[:classes].include?(:air)}.collect{|h| h[:name]}
 => ["Plane", "Helicopter", "Sea Plane"]


1- How many vehicles with more than 2 wheels:
1.9.3-p362 :014 > $vehicles.map{|v| puts v[:name] if v[:wheels] > 2}
Car
Truck
 => [nil, nil, nil, nil, nil, nil, nil] 

1.9.3-p362 :036 > $vehicles.select{|v| v[:wheels] > 2 }.count
 => 2 

2- Which vehicles can I use in water
1.9.3-p362 :021 > $vehicles.select{|v| v[:classes].include?(:water)}.collect{|h| h[:name]}
 => ["Boat"] 

3- Classes of vehicles with less than 2 wheels
1.9.3-p362 :055 > $vehicles.select {|v| v[:wheels] < 2 }.map{|c| c[:classes]}.flatten.uniq
 => [:water, :air, :ground] 
 
