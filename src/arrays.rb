
a = [ 3.14159, "pie", 99 ]
print "a: ", a, "\n"
print "a.class: ", a.class, "\n"	#	Array
print "a.length: ", a.length, "\n"	#	3
print "a[0]: ", a[0], "\n"	#	3.14159
print "a[1]: ", a[1], "\n"	#	"pie"
print "a[2]: ", a[2], "\n"	#	99
print "a[3]: ", a[3], "\n"	#	nil
b = Array.new
print "\n\nb: ", b, "\n"
print "b.class: ", b.class, "\n"	#	Array
print "b.length: ", b.length, "\n"	#	0
b[0] = "second: "
b[1] = "array: "
puts "Update b[0], b[1]"
print "b: ", b, "\n"	#	["second", "array"]




a = [ 1, 3, 5, 7, 9 ]
print "\n\na:", a.to_s, "\n"
print "a[-1]: " + a[-1].to_s	 + "\n"#	9
print "a[-2]: " + a[-2].to_s	 + "\n"	#	7
print "a[-99]: " + a[-99].to_s + "\n"


a = [ 1, 3, 5, 7, 9 ]
puts "\n\na:" + a.to_s
print "a[1, 3]: ", a[1, 3], "\n"	#	[3, 5, 7]
print "a[3, 1]: ", a[3, 1], "\n"	#	[7]
print "a[-3, 2]: ", a[-3, 2], "\n"	#	[5, 7]

a = [ 1, 3, 5, 7, 9 ]
print "\n\na: ", a, "\n"
print "a[1..3]: ", a[1..3], "\n"	#	[3, 5, 7]
print "a[1...3]: ", a[1...3], "\n"	#	[3, 5]
print "a[3..3]: ", a[3..3], "\n"	#	[7]
print "a[-3..-1: ", a[-3..-1], "\n"	#	[5, 7, 9]

a = [ 1, 3, 5, 7, 9 ]	#	[1, 3, 5, 7, 9]
print "\n\na: ", a, "\n"
a[1] = 'bat'	#	[1, "bat", 5, 7, 9]
print "update a[1]: ", a, "\n"
a[-3] = 'cat'	#	[1, "bat", "cat", 7, 9]
print "update a[-3]: ", a, "\n"
a[3] = [ 9, 8 ]	#	[1, "bat", "cat", [9, 8], 9]
print "update a[3]: ", a, "\n"
a[6] = 99	#	[1, "bat", "cat", [9, 8], 9, nil, 99]
print "update a[6]: ", a, "\n"

a = [ 1, 3, 5, 7, 9 ]	#	[1, 3, 5, 7, 9]
print "\n\na: ", a, "\n"
a[2, 2] = 'cat'	#	[1, 3, "cat", 9]
print "update a[2,2] to cat: ", a, "\n"
a[2, 0] = 'dog'#	[1, 3, "dog", "cat", 9]
print "update a[2,0] to dog: ", a, "\n"
a[1, 1] = [ 9, 8, 7 ]	#	[1, 9, 8, 7, "dog", "cat", 9]
print "update a[1,1] to [9,8,7]: ", a, "\n"
a[0..3] = []	#	["dog", "cat", 9]
print "update a[0..3] to []: ", a, "\n"
a[5] = 99	#	["dog", "cat", 9, nil, nil, 99]
print "update a[5] to 99: ", a, "\n"



class Array
  def inject(n)
    each { |value| n = yield(n, value) }
    n
  end
  def sum
    inject(0) { |n, value| n + value }
  end
  def product
    inject(1) { |n, value| n * value }
  end
end
puts [1, 2, 3, 4, 5].sum
puts [1, 2, 3, 4, 5].product