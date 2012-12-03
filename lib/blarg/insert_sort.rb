module Blarg
  class InsertSort
    def initialize(input = nil)
      p "Welcome to Insert Sort please enter some random numbers to sort"
      @input = []
      input.nil? ? (@input = $stdin.gets.chomp) : @input = input
      run(@input)
    end

    def run input
      nums = []
      input.split(" ").each {|n| nums << n.to_i} unless input.is_a? Array
      p nums
      p sort nums
    end

    def sort nums
      :numbers
    end
  end
end