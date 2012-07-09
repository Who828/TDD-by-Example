require 'multi_currency'

describe Dollar do
  it "multiplicates the values correctly" do
    five = Dollar.new(5)
    five.times(2)
    five.amount.should == 10
  end
end
    
