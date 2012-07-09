class Money
  attr_reader :amount
  
  def ==(money)
    amount == money.amount
  end
end
