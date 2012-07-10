require_relative 'testcase'

class WasRun < TestCase
  attr_reader :was_run,:was_setup,:log

  def initialize(name)
    @was_run = false
    super(name)
  end

  def tear_down
    @log = @log + "teardown "
  end

  def test_method
    @log = @log+"test_method "
  end

  def setup
    @log = "setup "
  end

  def test_broken_method
    raise 
  end
end
