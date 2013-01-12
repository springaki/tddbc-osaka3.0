# -*- coding: utf-8 -*-

require_relative "../vending_machine"

describe VendingMachine do

  before do
    @vending_machine = VendingMachine.new
  end

  context "金額未投入の場合" do
    it "総計を取得すると0円が返却される" do
      @vending_machine.total_amount.should eq(0)
    end
    it "払い戻しを行うと、０円が返却される" do
      @vending_machine.payback.should eq(0)
    end

  end


  context "金額投入してる場合" do
    it "100円を投入できる" do
      @vending_machine.insert(100)
      @vending_machine.total_amount.should eq(100)
    end

    it "投入は複数回できる" do
      @vending_machine.insert(100)
      @vending_machine.insert(1000)
      @vending_machine.total_amount.should eq(1100)
    end

    it "投入可能なお金が全て投入出来る" do
      [10, 50, 100, 500, 1000].each do |money|
        @vending_machine.insert(money)
      end
      @vending_machine.total_amount.should eq(1660)
    end

    it "1100円を投入して払い戻しを行うと、1100円が返却される" do
      @vending_machine.insert(100)
      @vending_machine.insert(1000)
      @vending_machine.payback.should eq(1100)
    end

    it "払い戻しを行うと、0円が返却される" do
      @vending_machine.insert(100)
      @vending_machine.payback
      @vending_machine.payback.should eq(0)
    end
  end
end
