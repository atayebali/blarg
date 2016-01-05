require 'spec_helper'
require_relative "../../lib/microprograms/list_flatten"

describe Blarg::ListFlatten do

  def node_count node
    i = 0
    while node.next != nil
      i += 1
      node = node.next
    end
    i
  end

  context "Initialization" do
    let(:flattener) { Blarg::ListFlatten.new }

    it "has a list" do
      flattener.list.should_not be_nil
    end

    it "has head node" do
      flattener.list.should be_a OpenStruct
    end

    it "has children attached" do
      flattener.list.child.should be_a OpenStruct
    end
  end

  context "Flattening" do
    let(:flattener) { Blarg::ListFlatten.new }
    let(:list ) {flattener.list}
    let(:flattened_list ) do
      flattener.flatten
      flattener.list
    end

    before do
      @k = node_count list
      @j = node_count flattened_list
    end

    it "children all have been appended" do
      flist = flattened_list
      while flist.next != nil
        if flist.child != nil
          flist.child.previous.should_not be_nil
        end
        flist = flist.next
      end
    end

    it "list has changed upon flattening" do
     @k.should < @j
    end
  end

  context "Unflatten" do
    let(:flattener) { Blarg::ListFlatten.new }
    let(:bushy_list) { flattener.list }
    let(:unflattened_list) do
      flattener.flatten
      flattener.unflatten
      flattener.list
    end

    before do
      @k = node_count bushy_list
      @j = node_count unflattened_list
    end

    it "is bushy again" do
      @k.should eq @j
    end

  end

end
