require 'pp'


array = Array.new(3) { Array.new(4) { 0 } }
pp array
x = array[0][1]
array[2][3] = 2
puts(x)
pp array