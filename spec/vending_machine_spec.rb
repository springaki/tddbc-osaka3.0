# -*- coding: utf-8 -*-

require_relative "../vending_machine"
describe VendingMachine do
  it "金額未投入の場合、総計を取得すると0円が返却される" do
    vending_machine.total_amount.should eq(0)
  end
end
