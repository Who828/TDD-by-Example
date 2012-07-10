class TestResult
  attr_reader :run_count, :error_count

  def initialize
    @run_count = 0
    @error_count = 0
  end

  def test_started
    @run_count = @run_count + 1
  end

  def test_failed
    @error_count = @error_count + 1
  end

  def summary
    "%d run, %d failed" % [run_count, error_count]
  end
end

