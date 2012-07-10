require_relative '../lib/wasrun'

class TestCaseTest < TestCase

  def test_template_method
    @test = WasRun.new('test_method')
    @test.run
    assert('setup test_method teardown ' == @test.log)
  end
end

TestCaseTest.new("test_template_method").run
