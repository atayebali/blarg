require 'spec_helper'
require_relative "../../lib/microprograms/power"

describe 'Power' do

  context "iterative compute" do
    it "find power of 1" do
      Blarg::Power.new(1,1).compute.should eq 1
    end

    it "finds the 2 ^2" do
      Blarg::Power.new(2,2).compute.should eq 4
    end

    it "finds the 5 ^ 5" do
      Blarg::Power.new(5,5).compute.should eq 3125
    end
  end

  context "Number of steps cannot exceed C log exponent" do
    pending "finds the 5 ^ 5" do
      Blarg::Power.new(5,5).short_compute.should eq 3125
    end
    it "finds the 4 ^ 4" do
      Blarg::Power.new(4,4).short_compute.should eq 256
    end

  end


end
