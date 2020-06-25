#!/usr/local/bin/ruby -w


a = 'Hello, world!'
puts a

3.times { puts 'Hello!' }

1.times { puts a}

a = 1
b = 3
c = a + b
puts c


def say_goodnight(name)
  "Goodnight, #{name}"
end


# Time for bed...
puts say_goodnight('John-Boy')
puts say_goodnight('Mary-Ellen')


a = [ 1, 'cat', 3.14 ]

puts a[0]

puts a

puts a.hash

a = %w{ ant bee cat dog elk }

puts a

instSection = {
    'cello'     => 'string',
    'clarinet'  => 'woodwind',
    'drum'      => 'percussion',
    'oboe'      => 'woodwind',
    'trumpet'   => 'brass',
    'violin'    => 'string'
}


puts instSection

puts instSection.fetch('drum')
puts instSection['oboe']

# count = 3
#
# tries = 2
#
# if count > 10
#   puts "Try again"
# elsif tries == 3
#   puts "You lose"
# else
#   puts "Enter a number"
# end

square = 2
square = square*square while square < 1000
puts square


# timestamp = /\d\d:\d\d:\d\d/     # a time such as 12:34:56
# perl_char_python = /Perl.*Python/       # Perl, zero or more other chars, then Python
# perl_space_python = /Perl\s+Python/      # Perl, one or more spaces, then Python
# ruby_space_perlpython = /Ruby (Perl|Python)/ # Ruby, a space, and either Perl or Python


def callBlock
  yield
  yield
end

callBlock { puts 'In the block' } # code block , gets executed on yield.


# iterator puts -- write to console with new line.
a = %w( ant bee cat dog elk )    # create an array
a.each { |animal| puts animal }  # iterate over the contents


# prints *****3456abcde -- write to console no new line
5.times { print '*' }
3.upto(6) {|i|  print i }
('a'..'e').each {|char| print char }

puts
printf 'Number: %5.2f, String: %s', 1.23, "hello\n\n\n"


def fibUpTo(max)
  i1, i2 = 1, 1 # parallel assignment
  while i1 <= max
    yield i1
    i1, i2 = i2, i1+i2
  end
end
fibUpTo(1000) { |f| print f, ' ' }


num = 231
7.times do
  print num.class, " ", num, "\n"
  num *= num
end



3.times        { print "X " }
puts
1.upto(5)      { |i| print i, " " }
puts
99.downto(95)  { |i| print i, " " }
puts
50.step(80, 5) { |i| print i, " " }

puts

def varargs(arg1, *rest)
  puts "Got #{arg1} and #{rest.join(', ')}"
end
varargs("one")	#	"Got one and "
varargs("one", "two")	#	"Got one and two"
varargs "one", "two", "three"	#	"Got one and two, three"