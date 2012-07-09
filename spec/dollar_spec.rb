require 'dollar'

describe Dollar do
  it "multiplicates the values correctly" do
    five = Dollar.new(5)
    Dollar.new(10).should == five.times(2)
    Dollar.new(15).should == five.times(3)
  end

  it "checks if two Dollar objects are equal" do
    Dollar.new(5).should == Dollar.new(5)
    Dollar.new(5).should_not == Dollar.new(6)
  end

end
    
