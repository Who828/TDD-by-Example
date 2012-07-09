require 'money'
require 'dollar'
require 'franc'

describe Money do
  it "equates two different objects correctly" do
    Dollar.new(5).should == Dollar.new(5)
    Dollar.new(5).should == Franc.new(5)
    Dollar.new(5).should_not == Franc.new(6)
  end
end
