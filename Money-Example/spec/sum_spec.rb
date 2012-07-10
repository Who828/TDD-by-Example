require 'sum'

describe Sum do

  it "returns a sum after peforming an addition" do
    five = Money.dollar(5)
    sum  = five.plus(five)
    five.should == sum.augend
    five.should == sum.addend
  end 

  it " can add two currencies correctly" do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    sum = Sum.new(five_bucks,ten_francs).plus(five_bucks)
    result =  bank.reduce(sum, "USD")
    result.should == Money.dollar(15)
  end

  it "can multiply currencies correctly" do
    five_bucks = Money.dollar(5)
    ten_francs = Money.franc(10)
    bank = Bank.new
    bank.add_rate("CHF", "USD", 2)
    sum = Sum.new(five_bucks,ten_francs).times(2)
    result =  bank.reduce(sum, "USD")
    result.should == Money.dollar(20)
  end
end
