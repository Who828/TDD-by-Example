require_relative 'testcase'

class WasRun < TestCase
  attr_reader :was_run,:was_setup

  def initialize(name)
    @was_run = false
    super(name)
  end

  def test_method
    @was_run = true
  end

  def setup
    @was_run = false
    @was_setup = true
  end
end
