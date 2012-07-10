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

  def run(result)
    result.test_started
    setup
    begin
      self.send(name)
    rescue Exception => ex
      p ex
      result.test_failed
    end
    tear_down
  end

  def assert(arg)
    arg == true
  end

  def assert_not(arg)
    arg != true 
  end
end
