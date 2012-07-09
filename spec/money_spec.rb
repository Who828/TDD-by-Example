require 'money'
require 'franc'

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

  it "equates different classes correctly" do
    Money.new(10, 'CHF').should == Franc.new(10, 'CHF')
  end
end
