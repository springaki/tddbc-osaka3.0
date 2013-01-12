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
    @amount.tap{@amount = 0}
  end

end
