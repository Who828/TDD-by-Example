require 'pair'
require 'money'

class Bank
  attr_reader :rates

  def initialize
    @rates = {}
  end

  def add_rate(from, to, rate)
    @rates[Pair.new(from, to)] = rate.to_i
  end
  
  def rate(from, to)
    return 1 if from == to
    @rates[Pair.new(from, to)]
  end

  def reduced(source, to)
    sum = source
    sum.reduce(self, to)
  end

  def reduce(source, to)
    source.reduce(self,to)
  end
end
