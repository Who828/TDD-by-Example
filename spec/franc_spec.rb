require 'franc'

describe Franc do
  it "multiplicates the values correctly" do
    five = Franc.new(5, "CHF")
    Franc.new(10, "CHF").should == five.times(2)
    Franc.new(15, "CHF").should == five.times(3)
  end
end
