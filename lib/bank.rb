class Bank
  def reduced(source, to)
    sum = source
    sum.reduce(to)
  end

  def reduce(source, to)
    source.reduce(to)
  end
end
