require 'bank'
require 'sum'

class Money
  attr_reader :amount,:currency
  
  def initialize(amount,currency)
    @amount = amount
    @currency = currency
  end

  def ==(money)
    amount == money.amount && 
     currency == money.currency 
  end

  def times(multiplier)
    Money.new(amount * multiplier, currency)
  end

  def self.dollar(amount)
    Money.new(amount, "USD")
  end

  def self.franc(amount)
   Money.new(amount,"CHF")
  end

  def plus(added)
    Sum.new(self, added)
  end

  def reduce(bank, to)
    rate = bank.rate(currency, to)
    Money.new(amount/rate, to)
  end
end
