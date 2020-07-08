h = { 'dog' => 'canine', 'cat' => 'feline', 'donkey' => 'asinine' }
print "h: ", h, "\n"
print "h.length: ", h.length, "\n"	#	3
print "h[dog]: ", h['dog'], "\n"	#	"canine"
h['cow'] = 'bovine'
h[12]    = 'dodecine'
h['cat'] = 99
puts "update h[cow]->bovine, h[12]->dodecine, h[cat]->99"
print "h: ", h	#	{"cow"=>"bovine", "cat"=>99, 12=>"dodecine", "donkey"=>"asinine", "dog"=>"canine"}

