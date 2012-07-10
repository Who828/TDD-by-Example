class TestCase  
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def run
    setup
    method = self.send(name)
    method
  end

  def assert(arg)
     if arg
       p true
     else
       p false
     end
  end

  def assert_not(arg)
    if !arg
      p true
    else
      p false
    end
  end
end
