require 'bank'

describe Bank do

  it "performs addition for same currency" do
    sum = Sum.new(Money.dollar(3), Money.dollar(4))
    bank = Bank.new
    result = bank.reduced(sum, "USD")
    result.should == Money.dollar(7)
  end

  it "reduces money using the bank" do
    bank = Bank.new
    result = bank.reduced(Money.dollar(1), "USD")
    result.should == Money.dollar(1)
  end

  it "rates of the same currency should be one" do
    Bank.new.rate("USD", "USD").should == 1
  end

  it "adds multiple currency correctly" do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    result =  bank.reduce(five_bucks.plus(ten_francs), "USD")
    result.should == Money.dollar(10)
  end
end
