module Blarg
  class MergeSort
    def initialize(input = nil)
      print <<-DOC
      Divide and Conquer (and combine):

      Divide unsorted list into 2 sub lists. Sort sub lists recursively until the list size is of 1.
      Then it returns itself.

      Combine the sub-lists back into form the main list (with sorted items.)

      Analysis: O(n log n) Average and Worst.

      Although it is O(n log n) it requires a lot of space for merges.

      Best when done as external sort or tape drives.  Random Access to such systems is slow. But once you land in the right place

      DOC

      @input = []
      input.nil? ? (@input = $stdin.gets.chomp) : @input = input
    end

    def sort
      data = @input
      merge_sort(data)
    end

    def merge_sort(data = [])
      @sorted_data = []
      divide(data)
    end

private

    def divide(data)
      return data if data.count <= 1
      mid = data.count/2
      floor =  mid - 1
      ceiling = mid
      conq(divide(data[0..floor]), divide( data[ceiling..(data.count - 1)]  ))
    end

    def conq(one, two)
      good = []
      until one.empty? or two.empty? do
        if one.first < two.first
          good << one.shift
        else
          good << two.shift
        end
      end
      good.concat(one).concat(two)
    end
  end
end


