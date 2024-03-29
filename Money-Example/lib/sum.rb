require 'money'

class Sum
  attr_reader :augend, :addend
  def initialize(augend, addend)
    @augend = augend
    @addend = addend
  end

  def reduce(bank, to)
    amount = augend.reduce(bank, to).amount + addend.reduce(bank, to).amount
    Money.new(amount, to)
  end

  def plus(addend)
    Sum.new(self, addend)
  end

  def times(multiplier)
    Sum.new(augend.times(multiplier), addend.times(multiplier))
  end
end
