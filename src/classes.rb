
# class song
class Song
  @@plays = 0
  def initialize(name, artist, duration)
    @name     = name
    @artist   = artist
    @duration = duration
    @plays    = 0
  end

  def play
    @plays += 1
    @@plays += 1
    "This  song: #@plays plays. Total #@@plays plays."
  end

  def to_s
    "Song: #{@name}--#{@artist} (#{@duration})"
  end

  # getter
  attr_reader :name, :artist, :duration

  #setter
  attr_writer :duration, :name, :artist
end

# Inheritance
class KaraokeSong < Song
  def initialize(name, artist, duration, lyrics)
    super(name, artist, duration)
    @lyrics = lyrics
  end

  def to_s
    #"KaraokeSong: #{@name}--#{@artist}--#{@duration}--#{@lyrics}"
    super + " [#{@lyrics}]"
  end
end

aSong = Song.new("Bicylops", "Fleck", 260)

puts aSong.to_s

#print aSong.artist, aSong.duration, aSong.name, "\n"

aSong.duration = 257

puts "new duration:" + aSong.duration.to_s
puts aSong.to_s

ksong = KaraokeSong.new("My Way", "Sinatra", 225, "And now, the...")
puts ksong.to_s


s1 = Song.new("Song1", "Artist1", 234)
s2 = Song.new("Song2", "Artist2", 345)

puts s1.play
puts s2.play
puts s1.play
puts s1.play




class Account
  attr_reader :balance       # accessor method 'balance'

  protected :balance         # and make it protected

  def greaterBalanceThan(other)
    return @balance > other.balance
  end
end

class Accounts

  private

  def debit(account, amount)
    account.balance -= amount
  end
  def credit(account, amount)
    account.balance += amount
  end

  public

  #...
  def transferToSavings(amount)
    debit(@checking, amount)
    credit(@savings, amount)
  end
  #...
end

class SongList
  MaxTime = 5*60           #  5 minutes

  def SongList.isTooLong(aSong)
    aSong.duration > MaxTime
  end

  def initialize
    @songs = Array.new
  end
  def append(aSong)
    @songs.push(aSong)
    self
  end

  def deleteFirst
    @songs.shift
  end
  def deleteLast
    @songs.pop
  end

  def print_songs
    print "songs length: ", @songs.length, "\n"
    @songs.each { |song| print "\t",  song, "\n" }
  end

  def [](key)
    if key.kind_of?(Integer)
      result = @songs[key]
    else
      result = @songs.find { |aSong| key == aSong.name }
    end
    result
  end
end

# song1 = Song.new("Bicylops", "Fleck", 260)
# puts SongList.isTooLong(song1)
# song2 = Song.new("The Calling", "Santana", 468)
# puts SongList.isTooLong(song2)


list = SongList.new
puts "\n\n\n\nA new songlist got created"

list.print_songs

list.
    append(Song.new('title1', 'artist1', 1)).
    append(Song.new('title2', 'artist2', 2)).
    append(Song.new('title3', 'artist3', 3)).
    append(Song.new('title4', 'artist4', 4))
list.print_songs
print "list[0]: ", list[0], "\n"
print "list[1]: ", list[1], "\n"

list.deleteFirst	#	Song: title1--artist1 (1)
print "deleteFirst song \n"
list.print_songs
list.deleteFirst	#	Song: title2--artist2 (2)
print "deleteFirst song \n"
list.print_songs
list.deleteLast	#	Song: title4--artist4 (4)
print "deleteLast song \n"
list.print_songs
list.deleteLast	#	Song: title3--artist3 (3)
print "deleteLast song \n"
list.print_songs
list.deleteLast	#	nil
print "deleteLast song \n"
list.print_songs



class BrokenAmplifier
  attr_accessor :leftChannel, :rightChannel
  def volume=(vol)
    self.leftChannel = self.rightChannel = vol
  end
end
ba = BrokenAmplifier.new
ba.leftChannel = ba.rightChannel = 99
ba.volume = 5
print ba.leftChannel
print ba.rightChannel