require 'money'

describe Money do
  it "equates the same objects correctly" do
    Money.dollar(5).should == Money.dollar(5)
    Money.dollar(5).should_not == Money.franc(6)
    Money.dollar(5).should_not == Money.franc(6)
  end

  it "multiplies and returns the correct value" do
    five = Money.dollar(5)
    five.times(2).should == Money.dollar(10)
    five.times(3).should == Money.dollar(15)
  end

  it "checks if the given currency is correct" do
    Money.dollar(1).currency.should == "USD"
    Money.franc(1).currency.should == "CHF"
  end

  it "returns a sum after peforming an addition" do
    five = Money.dollar(5)
    sum  = five.plus(five)
    five.should == sum.augend
    five.should == sum.addend
  end 

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
    p bank.rates.hash
    result =  bank.reduce(five_bucks.plus(ten_francs), "USD")
    result.should == Money.dollar(10)
  end
    
end
