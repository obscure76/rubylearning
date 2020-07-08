require 'delegate'

sizeInInches = [ 10, 15, 22, 120 ]

class Feet < DelegateClass(Array)
  def initialize(arr)
    super(arr)
  end

  def [](*n)
    val = super(*n)
    case val.class
    when Numeric
      val/12.0
    else
      val.collect {|i| i/12.0}
    end
  end
end


sizeInFeet = Feet.new(sizeInInches)
print "Inches: ", sizeInInches[0..3], "\n"	#	[10, 15, 22, 120]
print "Feet: ", sizeInFeet[0..3], "\n"	#	[0.8333333333, 1.25, 1.833333333, 10.0]


class TicketSeller
  def sellTicket()
    return 'Here is a ticket'
  end
end

class NoTicketSeller
  def sellTicket()
    "Sorry-come back tomorrow"
  end
end

class TicketOffice < SimpleDelegator
  def initialize
    @seller = TicketSeller.new
    @noseller = NoTicketSeller.new
    super(@seller)
  end
  def allowSales(allow = true)
    __setobj__(allow ? @seller : @noseller)
    allow
  end
end


to = TicketOffice.new
to.sellTicket	#	"Here is a ticket"
to.allowSales(false)	#	false
to.sellTicket	#	"Sorry-come back tomorrow"
to.allowSales(true)	#	true
to.sellTicket	#	"Here is a ticket"
