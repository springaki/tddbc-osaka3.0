# -*- coding: utf-8 -*-

require_relative "../vending_machine"

describe VendingMachine do
  it "金額未投入の場合、総計を取得すると0円が返却される" do
    vending_machine = VendingMachine.new
    vending_machine.total_amount.should eq(0)
  end

  it "100円を投入できる" do
    vending_machine = VendingMachine.new
    vending_machine.insert(100)
    vending_machine.total_amount.should eq(100)
  end
end
