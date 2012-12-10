module Blarg
  class MergeSort
    def initialize(input = nil)
      print <<-DOC

      DOC

      @input = []
      input.nil? ? (@input = $stdin.gets.chomp) : @input = input
    end

    def sort
      data = @input
      merge_sort(data)
    end

    def merge_sort(data = [])
      middle_high = data.count/2
      middle_low = middle - 1

      merge_sort(data[0..middle])

      merge_sort(data(middle+1..3))
    end

    private


  end
end