class Money
  attr_reader :amount,:currency
  
  def ==(money)
    amount == money.amount
  end

  def self.dollar(amount)
    Dollar.new(amount, "USD")
  end

  def self.franc(amount)
    Franc.new(amount,"CHF")
  end
end
