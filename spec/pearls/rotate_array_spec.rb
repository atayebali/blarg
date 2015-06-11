require 'spec_helper'
require_relative "../../lib/pearls/rotate_array"

describe "Rotate Array" do
  context "Juggle" do
    let(:array) { [1, 2, 3, 4, 5, 6] }
    it "rotates" do
      Blarg::RotateArray.new(array, 3).juggle_rotate.should eql [4, 5, 6, 1, 2, 3]
    end
  end

  context "0(n) Complexity" do
    let(:array) { [1, 2, 3, 4, 5, 6] }
    it "rotates" do
      Blarg::RotateArray.new(array, 3).o_n_rotate.should eql [4, 5, 6, 1, 2, 3]
    end
  end
end