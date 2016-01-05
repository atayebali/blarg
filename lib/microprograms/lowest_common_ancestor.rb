module Blarg
  require 'ostruct'
  class LowestCommonAncestor
    def initialize tree=nil
      @tree = tree
    end

    def work nodes
      pos = @tree
      child_1 = nodes.first
      child_2 = nodes.last

      while pos != nil
        if (child_1..child_2).include? pos.value
          return pos.value
        end

        if child_1 > pos.value && child_2 > pos.value
          pos = pos.right
        elsif child_1 < pos.value && child_2 < pos.value
          pos = pos.left
        else
          pos = nil
        end
      end
    end
  end
end