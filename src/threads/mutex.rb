counter = 0
3.times.map { |i|
  Thread.new {
    puts "[Thread #{i}] Before: #{counter}"
    counter += 1
    puts "[Thread #{i}] After: #{counter}" }
}.each(&:join)

puts "\n\nWith mutex\n\n"
sleep 2

counter = 0
mutex = Mutex.new
3.times.map { |i|
  Thread.new {
    mutex.synchronize {
      puts "[Thread #{i}] Before: #{counter}"
      counter += 1
      puts "[Thread #{i}] After: #{counter}"
    }
  }
}.each(&:join)