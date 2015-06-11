module Blarg

=begin
  Class to Rotate array in different ways.

  Juggle Rotates it in a rubyesque way where shift and push are utilized.
  O-N is used to run in 0(n) complexity using the array reversal method.
=end

  class RotateArray
    def initialize orignal_array, num
      @orig = orignal_array
      @orig_copy = @orig
      @num = num
    end

=begin
  @num = is the number of items that need to be reversed (assum left reverse)
  @orig = is the array that will be reversed

  return an array that is reversed.

=end

    def juggle_rotate
      @num.times do
        temp = @orig.shift
        @orig << temp
      end
      @orig
    end

    def o_n_rotate
      reverse(0, @num-1)  # Reversed the first portion of the array. [1, 2, 3, 4, 5, 6 ] => [3,2,1,4,5,6]
      reverse(@num, @orig.count - 1) # Reversed the second portion of the array. [3,2,1,6,5,4]
      reverse(0, @orig.count - 1) #Reversed the entire array to get [4,5,6,1,2,3]
      @orig
    end

    def reverse(start, finish)
      while start < finish do
        temp = @orig[start]
        @orig[start] = @orig[finish]
        @orig[finish] = temp
        start += 1
        finish -= 1
      end
    end
  end
end