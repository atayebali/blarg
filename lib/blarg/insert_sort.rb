module Blarg
  class InsertSort
    def initialize
      p "Welcome to Insert Sort please enter some random numbers to sort"
      @input = []
      @input = $stdin.gets.chomp
      run(@input)
    end

    def run input
      nums = []
      input.split(" ").each {|n| nums << n.to_i}
      p nums
      p sort nums
    end

    def sort nums
      :numbers
    end
  end
end