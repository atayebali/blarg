require 'ostruct'
module Blarg
  class ListFlatten
    HEAD_NODE = OpenStruct.new(:value => rand(1000), :previous=> "root", :next => nil, :child => nil)
    attr_reader :list

    def initialize
      generate_structure
      @list = HEAD_NODE
    end

    def flatten
      flattener = Blarg::Flattner.new @list
      flattener.work
    end

    def unflatten
      current_node = HEAD_NODE
      traverse_to_unflatten current_node
    end

    def traverse_to_unflatten node
      while node.next != nil
        explore_and_build node if node.child != nil
        node = node.next
      end
    end

    def explore_and_build node #this is broken fix this.
      if node.child != nil
        explore_and_build node.child
        if node.previous != "root"
          tail = node.previous
          tail.next = nil
          node.previous = nil
        end
      else
        traverse_to_unflatten node
      end
    end


    def generate_structure
      attach_same_level HEAD_NODE, 4
      attach_lower_level HEAD_NODE, 2
      node = HEAD_NODE.child
      attach_same_level node, 2
      node = node.next
      attach_lower_level node, 1
      node = node.next
      attach_lower_level node, 2
      node = HEAD_NODE

      while node.next != nil
        node = node.next
      end
      attach_lower_level node, 3
    end

    def attach_same_level current_node, number
      root_node = current_node
      number.times do
        node = build_node
        current_node = attach_next current_node, node
      end
      root_node
    end

    def attach_lower_level current_node, depth
      root_node = current_node
      depth.times do
        node = build_node
        current_node = attach_child current_node, node
      end
      root_node
    end

    def build_node
      node = OpenStruct.new
      node.value = rand(1000)
      node.previous = nil
      node.next = nil
      node.child = nil
      node
    end

    def attach_child parent, child
      parent.child = child
      child
    end

    def attach_next first, second
      first.next = second
      second.previous = second.next
      second
    end
  end

  class Flattner
    attr_reader :list

    def initialize list
      @list = list
    end

    def work
      current_node = @list
      root_node = current_node
      tail_pointer = find_tail_for current_node

      while current_node.next != nil
        if current_node.child != nil
          child = current_node.child
          tail_pointer.next = child
          child.previous = tail_pointer
          tail_pointer = find_tail_for root_node
        end
        current_node = current_node.next
      end
      root_node
    end

    def find_tail_for node
      while node.next != nil
        node = node.next
      end
      node
    end
  end

  class UnFlatten


    def init list
      @list = list
    end


  end
end