class VendingMachine

  def insert(money)
    @amount = money
  end

  def total_amount
    @amount || 0
  end
end
