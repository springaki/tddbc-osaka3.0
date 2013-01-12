class VendingMachine

  def initialize
    @amount = 0
  end

  def insert(money)
    @amount += money
  end

  def total_amount
    @amount
  end

  def payback
    payback_money = @amount
    @amount = 0
    payback_money
  end

end
