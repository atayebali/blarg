require 'spec_helper'
require 'ostruct'
require_relative "../../lib/microprograms/lowest_common_ancestor"

describe Blarg::LowestCommonAncestor do
  context "setup" do
    let(:lca) { Blarg::LowestCommonAncestor.new }
    it "exists" do
      lca.should be_a(Blarg::LowestCommonAncestor)
    end
  end

  context "finding ancestors" do
    shared_examples "fetch lowest common ancestor" do |nodes, answer|
      let(:tree) { build_tree }
      let(:lca) {Blarg::LowestCommonAncestor.new(tree)}
      it "find ancestor for #{nodes}" do
        lca.work(nodes).should eq answer
      end
    end
    it_should_behave_like "fetch lowest common ancestor", [4, 14], 8
  end

  def build_tree
    values = [ 8, 4, 12, 10, 14, 22]
    root = OpenStruct.new(:value => 20, :left => nil, :right => nil)

    values.each do |v|
      node = OpenStruct.new(:value => v, :left => nil, :right => nil)
      pos = root
      while pos != nil
        if pos.value < v
          if pos.right.nil?
            pos.right = node
            pos = nil
          else
            pos = pos.right
          end
        elsif pos.value > v
          if pos.left .nil?
            pos.left = node
            pos = nil
          else
            pos = pos.left
          end
        end
      end
    end
    root
  end
end