require 'spec_helper'


describe "MergeSort" do
  let(:numbers) { nums = []; 100.times {nums << rand(10000)}}

  it "should do get a sorted obj" do
    numbers = []
    merge_sorter=  Blarg::MergeSort.new(numbers)
    sorted_data = merge_sorter.sort

  end

end