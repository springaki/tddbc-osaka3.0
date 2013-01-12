class VendingMachine

  def initialize
    @amount = 0
  end

  def insert(money)
    @amount += money
  end

  def total_amount
    @amount || 0
  end

  def payback
    0
  end

end
