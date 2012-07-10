require_relative 'testcase'

class WasRun < TestCase
  attr_reader :was_run

  def initialize(name)
    @was_run = false
    super(name)
  end

  def testMethod
    @was_run = true
  end
end
