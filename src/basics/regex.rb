name_reg = /h(i|ello), my name is (?<name>.*)/i #i means case insensitive

name_input = "Hi, my name is Zaphod Beeblebrox"

match = name_reg.match(name_input) #returns either a MatchData object or nil
match_data = name_input.match(name_reg) #works either way

if match_data.nil? #Always check for nil! Common error.
  puts "No match"
else
  p match[0] #=> "Hi, my name is Zaphod Beeblebrox"
  p match[1] #=> "i" #the first group, (i|ello)
  p match[2] #=> "Zaphod Beeblebrox"
  #Because it was a named group, we can get it by name
  p match[:name]  #=> "Zaphod Beeblebrox"
  p match["name"] #=> "Zaphod Beeblebrox"
  puts "Hello #{match[:name]}!"
end
