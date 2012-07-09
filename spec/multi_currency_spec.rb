require 'multi_currency'

describe Dollar do
  it "multiplicates the values correctly" do
    five = Dollar.new(5)
    product = five.times(2)
    product.amount.should == 10
    product = five.times(3)
    product.amount.should == 15
  end

  it "checks if two Dollar objects are equal" do
    Dollar.new(5).equals(Dollar.new(5)).should be_true
    Dollar.new(5).equals(Dollar.new(6)).should be_false
  end

end
    
