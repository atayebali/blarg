require 'spec_helper'
require 'ostruct'
require_relative "../../lib/microprograms/non_repeated"

describe Blarg::NonRepeated do
  it "finds non first non repeated char" do
    c = Blarg::NonRepeated.find("total")
    c.should eql "o"
  end

  it "removes substring" do
    c = Blarg::NonRepeated.remove("total", "oa")
    c.should eql "t t l"
  end

  it "reverses a sentence" do
    c = Blarg::NonRepeated.reverse("This is a good statement. Right?")
    c.should eql "Right? statement. good a is This"
  end

  it "creates ints from strings" do
    c = Blarg::NonRepeated.to_int "367"
    c.should eql 367
  end

  it "creates ints from strings with negatives" do
    c = Blarg::NonRepeated.to_int "-367"
    c.should eql -367
  end

  it "creates ints from strings with negatives" do
    c = Blarg::NonRepeated.to_int "0"
    c.should eql 0
  end

  it "creates str from ints" do
    c = Blarg::NonRepeated.to_str 367
    c.should eql "367"
  end

  it "creates str from ints with negatives" do
    c = Blarg::NonRepeated.to_str -367
    c.should eql "-367"
  end

  it "handles 0 properly" do
    c = Blarg::NonRepeated.to_str 0
    c.should eql "0"
  end

end