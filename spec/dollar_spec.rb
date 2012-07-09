require 'dollar'

describe Dollar do
  it "multiplicates the values correctly" do
    five = Dollar.new(5,"USD")
    Dollar.new(10,"USD").should == five.times(2)
    Dollar.new(15, "USD").should == five.times(3)
  end

  it "checks if two Dollar objects are equal" do
    Dollar.new(5, "USD").should == Dollar.new(5, "USD")
    Dollar.new(5, "USD").should_not == Dollar.new(6, "USD")
  end

end
    
