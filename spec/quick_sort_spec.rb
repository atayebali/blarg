require 'spec_helper'
require_relative '../lib/blarg/quick_sort'

describe Blarg::QuickSort do
  it "sorts numbers correctly" do
    numbers = [45, 23, 1, 56, 32]
    quick_sort = Blarg::QuickSort.new(numbers)
    quick_sort.sort.should eq numbers.sort
  end
end