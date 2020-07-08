def takeBlock(p1)
  if block_given?
    yield(p1)
  else
    p1
  end
end


puts takeBlock("no block")	#	"no block"
puts takeBlock("no block") { |s| s.sub(/no /, '') }	#	"block"

class TaxCalculator
  def initialize(name, &block)
    @name, @block = name, block
  end
  def getTax(amount)
    "#@name on #{amount} = #{ @block.call(amount) }"
  end
end
tc = TaxCalculator.new("Sales tax") { |amt| amt * 0.075 }
puts tc.getTax(100)	#	"Sales tax on 100 = 7.5"
puts tc.getTax(250)	#	"Sales tax on 250 = 18.75"
