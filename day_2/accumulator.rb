
def sum (array)
 array.inject(0){|s,i| s+=i}
end

$vehicles.inject(0){|total_wheels, v| total_wheels += v[:wheels]}

