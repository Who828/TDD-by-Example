class TestSuite
  attr_reader :tests
  def initialize
   @tests = [] 
  end

  def add(test)
    @tests.push(test)
  end

  def run(result)
    @tests.each {|test| test.run(result)}
  end
end

