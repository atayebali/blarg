module Blarg
  class InsertSort
    def initialize(input = nil)
      print <<-DOC
        Analysis:

        Array is divided into 2 subarrays one is sorted and other is not.
        Elements are moved from unsorted to sorted array and placed in the correct postion.

        Advantages:  Great running times for already sorted arrays 0(n)
        Disadvantages: 0(n^2) for worst and average cases.
      DOC

      @input = []
      input.nil? ? (@input = $stdin.gets.chomp) : @input = input
    end

    def sort
      counter = 0
      p "Input length is #{@input.count}"
      @input.each_with_index do |number, index|
        counter +=1
        if index > 0
          holder = index
          while (holder > 0 ) do
            counter +=1
            if @input[holder] < @input[holder - 1]
              swap(holder-1, holder)
            end
            holder -= 1
          end
        end
      end
      p counter.to_s + " Loops done"
      @input
    end

    private
    def swap(index1, index2)
      temp = @input[index2]
      @input[index2] = @input[index1]
      @input[index1] = temp
      @input
    end
  end
end