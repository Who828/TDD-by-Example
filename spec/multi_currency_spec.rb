require 'multi_currency'

describe Dollar do
  it "multiplicates the values correctly" do
    five = Dollar.new(5)
    product = five.times(2)
    product.amount.should == 10
    product = five.times(3)
    product.amount.should == 15
  end
end
    
