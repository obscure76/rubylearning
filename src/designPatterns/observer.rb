require "observer"

class Ticker # Periodically fetch a stock price
  include Observable

  def initialize(symbol)
    @symbol = symbol
  end

  def run
    lastPrice = nil
    loop do
      price = Price.fetch(@symbol)
      print "Current price: #{price}\n"
      if price != lastPrice
        changed                 # notify observers
        lastPrice = price
        notify_observers(Time.now, price)
      end
    end
  end
end

class Warner
  def initialize(ticker, limit)
    @limit = limit
    ticker.add_observer(self)   # all warners are observers
  end
end

class WarnLow < Warner
  def update(time, price)       # callback for observer
    if price < @limit
      print "--- #{time.to_s}: Price below #@limit: #{price}\n"
    end
  end
end

class WarnHigh < Warner
  def update(time, price)       # callback for observer
    if price > @limit
      print "+++ #{time.to_s}: Price above #@limit: #{price}\n"
    end
  end
end

class Price
  def Price.fetch(symbol)
    10.0
  end
end

ticker = Ticker.new("MSFT")
WarnLow.new(ticker, 80)
WarnHigh.new(ticker, 120)
ticker.run
