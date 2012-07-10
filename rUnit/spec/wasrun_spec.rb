require_relative '../lib/wasrun'

class TestCaseTest < TestCase

  def setup
    @test = WasRun.new("test_method")
  end

  def test_running
    @test.run
    assert(@test.was_run)
  end

  def test_setup
    @test.run
    assert(@test.was_setup)
  end
end

TestCaseTest.new("test_running").run
TestCaseTest.new("test_setup").run
