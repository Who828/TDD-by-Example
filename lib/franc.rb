require 'money'

class Franc < Money
  def initialize(amount,currency)
    super(amount,currency)
  end
end
