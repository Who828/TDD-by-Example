class Pair < Hash  
  attr_reader :from, :to

  def initialize(from, to)
    @from = from
    @to = to
  end

  def ==(pair)
    from == pair.from && to == pair.to
  end

  def hash
    0
  end
end
