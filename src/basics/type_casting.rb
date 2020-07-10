puts '123.50'.to_f   #=> 123.5
puts Float('123.50') #=> 123.5

puts 123.5.to_s    #=> "123.5"
puts String(123.5) #=> "123.5"

puts '123.50'.to_i     #=> 123
#Integer('123.50') #=> 123

puts 1/2 #=> 0
puts 1.0 / 2      #=> 0.5
puts 1.to_f / 2   #=> 0.5
puts 1 / Float(2) #=> 0.5
puts 1.fdiv 2 # => 0.5
