class Block

 def echo(h)
  if block_given?
   yield h
  else
   puts h
  end
 end

 def give_array(array)
  array.each do |a|
   yield a+1
  end
 end

end
