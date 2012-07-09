require 'money'
require 'dollar'
require 'franc'

describe Money do
  it "equates two different objects correctly" do
    Dollar.new(5, "USD").should == Dollar.new(5, "USD")
    Dollar.new(5, "USD").should == Franc.new(5,"CHF")
    Dollar.new(5, "USD").should_not == Franc.new(6,"CHF")
  end

  it "multiplies and returns the correct value" do
    five = Money.dollar(5)
    five.times(2).should == Dollar.new(10, "USD")
    five.times(3).should == Dollar.new(15, "USD")
  end

  it "checks if the given currency is correct" do
    Money.dollar(1).currency.should == "USD"
    Money.franc(1).currency.should == "CHF"
  end
end
