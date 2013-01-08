module Blarg
  class QuickSort
    def initialize(input = nil)
      print <<-DOC

      Use of Partitioning to cut the size of data down and then sorting based on one element (pivot)

      Effectively, elements less than pivot will go on one side and elements greater than pivot will go on the another.

      Interestingly the pivot ends up in the correct sorted order after the first partition step.

      DOC
      @input = []
      input.nil? ? (@input = $stdin.gets.chomp) : @input = input
    end

    def sort
      data = @input

      quick_sort(data, 0, data.count-1)
    end

=begin


=end
    def quick_sort(data, low, high)
      if low < high
        pivot_random = rand(data.count-1)
        pivot = partition(data, low, high, pivot_random)
        quick_sort(data, low, pivot - 1 )
        quick_sort(data, pivot + 1, high )
      end
      return data
    end


    def partition(data, low, high, pivot)
      pivot_value = data[pivot]
      temp = data.last

      data[data.count-1] = pivot_value
      data[pivot] = temp
      store_index = low

      low.upto(high-1) do |i|
        if data[i] < pivot_value
          temp = data[i]
          data[i] = data[store_index]
          data[store_index] = temp
          store_index += 1
        end
      end
      temp = data[store_index]
      data[store_index] = data[high]
      data[high] = temp
      return store_index
    end



  end
end

