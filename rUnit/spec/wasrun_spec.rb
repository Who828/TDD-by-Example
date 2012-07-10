require_relative '../lib/wasrun'

class TestCaseTest < TestCase
  def test_running
    test = WasRun.new("testMethod")
    assert_not(test.was_run)
    test.run
    assert(test.was_run)
  end
end

TestCaseTest.new("test_running").run
