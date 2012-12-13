require 'spec_helper'
require_relative '../lib/blarg/insert_sort.rb'


describe "InsertSort" do

  it "should do get a  sort obj With InsertSort" do
   numbers = []
   100.times {numbers << rand(10000)}
   is =  Blarg::InsertSort.new(numbers)
   sorted_data = is.sort
   (sorted_data.first < sorted_data.last).should be_true
   p sorted_data

  end

end