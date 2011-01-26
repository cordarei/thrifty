require 'spec_helper'

describe Purchase do
  before(:each) do
    @attr = { :date => Date.today, :amount => 12.5, :comment => "hello" }
  end

  it "should create new instance given valid attributes" do
    Purchase.create!(@attr)
  end

  describe "attributes" do
    before(:each) do
      @purchase = Purchase.new
    end
    it "should have a date" do
      @purchase.should respond_to(:date)
      @purchase.date = Date.today
    end
    it "should have an amount" do
      @purchase.should respond_to(:amount)
      @purchase.amount = 12.5
    end
    it "should have a comment" do
      @purchase.should respond_to(:comment)
      @purchase.comment = "hello"
    end
  end

  describe "validations" do
    it "should require date" do
      Purchase.new(@attr.merge(:date => nil)).should_not be_valid
    end
    it "should require amount" do
      Purchase.new(@attr.merge(:amount => nil)).should_not be_valid
    end
    it "should reject long comment" do
      Purchase.new(@attr.merge(:comment => "a"*101)).should_not be_valid
    end
    it "should allow nil comment" do
      Purchase.new(@attr.merge(:comment => nil)).should be_valid
    end
    it "should allow blank comment" do
      Purchase.new(@attr.merge(:comment => "")).should be_valid
    end
  end
end
