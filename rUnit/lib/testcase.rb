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
    setup
    self.send(name)
    tear_down
  end

  def assert(arg)
    p arg == true
  end

  def assert_not(arg)
    p arg != true
  end
end
