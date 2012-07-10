require_relative 'testresult'

class TestCase  
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def setup
  end

  def tear_down
  end

  def run()
    result = TestResult.new
    result.test_started
    setup
    begin
      self.send(name)
    rescue Exception
      result.test_failed
    end
    tear_down
    result
  end

  def assert(arg)
    p arg == true
  end

  def assert_not(arg)
    p arg != true
  end
end
