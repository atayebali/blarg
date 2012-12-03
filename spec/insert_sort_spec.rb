require "rspec"
require_relative '../lib/blarg/insert_sort'


describe "InsertSort" do

  it "should do get a  sort obj" do
   is = Blarg::InsertSort.new([13, 32, 32])
   is.should_not be_nil

  end
end