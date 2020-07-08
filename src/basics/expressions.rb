print [ 3, 1, 7, 0 ].sort


class Integer
  alias oldPlus +
  def +(other)
    oldPlus(other).succ
  end
end

puts 1 + 2
a = 3
a += 4
puts a

class Song
  def [](fromTime, toTime)
    result = Song.new(self.title + " [extract]",
                      self.artist,
                      toTime - fromTime)
    result.setStartTime(fromTime)
    result
  end
end


puts `date`
#puts `dir`.split[34]
s = %x{echo "Hello there"}
puts s