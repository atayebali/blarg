require 'spec_helper'


describe "InsertSort" do

  it "should do get a  sort obj" do
   numbers = []
   100.times {numbers << rand(10000)}
   is =  Blarg::InsertSort.new(numbers)
   sorted_data = is.sort
   (sorted_data.first < sorted_data.last).should be_true
   p sorted_data

  end

end