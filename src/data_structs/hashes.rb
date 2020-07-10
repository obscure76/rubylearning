h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
print "h: ", h, "\n"
print "h.length: ", h.length, "\n"	#	3
print "h[dog]: ", h['dog'], "\n"	#	"canine"
h['cow'] = 'bovine'
h[12]    = 'dodecine'
h['cat'] = 99
puts "update h[cow]->bovine, h[12]->dodecine, h[cat]->99"
print "h: ", h	#	{"cow"=>"bovine", "cat"=>99, 12=>"dodecine", "donkey"=>"asinine", "dog"=>"canine"}

a = {}
p a[ :b ] # => nil

# iterate using each method
h = { "first_name" => "John", "last_name" => "Doe" }
h.each do |key, value|
  puts "#{key} = #{value}"
end

# iterate using each_key
h = { "first_name" => "John", "last_name" => "Doe" }
h.each_key do |key|
  puts key
end

# iterate using each_value
h = {"first_name" => "John", "last_name" => "Doe" }
h.each_value { |value| puts value }

# iterate using each_key_index
h = {"first_name" => "John", "last_name" => "Doe" }
h.each_with_index { |(key, value), index| puts "index: #{index} | key: #{key} | value: #{value}"}

#conversion to array
h_a = { :a => 1, :b => 2 }.to_a # => [[:a, 1], [:b, 2]]
print "hash to array: ", h_a, "\n"

# array to hash
a_h = [[:x, 3], [:y, 4]].to_h # => { :x => 3, :y => 4 }
print "array to hash: ", a_h, "\n"

flat_h = { :a => 1, :b => 2 }.flatten
print "flattened hash: ", flat_h, "\n"

# collect
upcases = Hash[('a'..'z').collect { |c| [c, c.upcase] }] # => { 'a' => 'A', 'b' => 'B', ... }
puts upcases

people = ['Alice', 'Bob', 'Eve']
height = [5.7, 6.0, 4.9]
zip_hash = Hash[people.zip(height)] # => { 'Alice' => 5.7, 'Bob' => '6.0', 'Eve' => 4.9 }
puts zip_hash

#filter hash
select_hash = { :a => 1, :b => 2, :c => 3 }.select { |k, v| k != :a && v.even? } # => { :b => 2 }
puts select_hash

reject_hash ={ :a => 1, :b => 2, :c => 3 }.reject { |_, v| v.even? } # => { :a => 1, :c => 3 }
puts reject_hash

class A
  def initialize(hash_value)
    @hash_value = hash_value
  end

  def hash
    @hash_value # Return the value given externally
  end

  def eql?(b)
    self.hash == b.hash
  end
end

class B < A
end

a = A.new(1)
b = B.new(1)

h = {}
h[a] = 1
h[b] = 2

