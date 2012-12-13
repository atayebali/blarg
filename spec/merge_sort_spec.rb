require 'spec_helper'
require_relative '../lib/blarg/merge_sort'


describe Blarg::MergeSort do

  it "should do get a sorted usign Merge Sort" do

    numbers = [ ]
    100.times{ numbers << rand(10000)}
    merge_sorter=  Blarg::MergeSort.new(numbers)
    sorted_data = merge_sorter.sort
    sorted_data.should eq numbers.sort
  end

end