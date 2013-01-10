module Blarg
  class QuickSort
    def initialize(input = nil)
      print <<-DOC

      Use of Partitioning to cut the size of data down and then sorting based on one element (pivot).

      Similar idea to Merge sort but we cut down on the space requirement.

      Effectively, elements less than pivot will go on one side and elements greater than pivot will go on the another.

      The key idea here is maintaining three different regions of the array (done in place to cut down on space requirement).
       - Area smaller than pivot
       - Area larger than pivot
       - Unexplored area.

      Interestingly the pivot ends up in the correct sorted order after the first partition step.

      Best Case: O(n lg n) n partitioning steps.  Recursive tree with lg n levels.
      Worst Case: O(n^2)

      DOC
      @input = []
      input.nil? ? (@input = $stdin.gets.chomp) : @input = input
    end

    def sort
      data = @input
      quick_sort(data, 0, data.count-1)
      data
    end


    def quick_sort(data, low, high)
      if low < high
        pivot_random = rand low..high
        pivot = partition(data, low, high, pivot_random)
        quick_sort(data, low, pivot - 1 )
        quick_sort(data, pivot + 1, high )
      end
    end


    def partition(data, low, high, pivot)
      pivot_value = data[pivot]

      swap(data,high, pivot)

      store_index = low

      low.upto(high-1) do |i|
        if data[i] < pivot_value
          swap data, i, store_index
          store_index += 1
        end
      end
      swap data, high, store_index
      return store_index
    end

    def swap(data, id1, id2)
      temp = data[id1]
      data[id1] = data[id2]
      data[id2] = temp
      data
    end
  end
end

