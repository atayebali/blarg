require 'ostruct'
module Blarg
  class NonRepeated

    def self.to_int str
      chars = str.chars.to_a
      final_num = 0
      nums = %w(0 1 2 3 4 5 6 7 8 9)
      inc = 0
      i = nums[inc]
      neg = false
      chars.each do |c|
        final_num *= 10
        neg = true if c == '-'
        while ( i < c) do
          inc += 1
          i = nums[inc]
        end
        final_num += inc
        inc = 0
      end
      neg ? final_num *= -1 : final_num
    end

    def self.to_str ints
      return "0" if ints == 0
      nums = %w(0 1 2 3 4 5 6 7 8 9)
      chars = ""
      factor = 1
      neg = false



      if ints < 0
        neg  = true
        ints = ints * -1
      end

      while ints > factor
        factor *= 10
      end
      factor /= 10

      num = ints

      while num > 0
        c = num / factor
        num = num % factor
        factor /= 10
        chars += nums[c]
      end
      neg ? "-" + chars : chars
    end

    def self.find str
      char_hash = {}
      str.split("").each do |char|
        if char_hash[char].nil?
          char_hash[char] = :once
        else
          char_hash[char] = :more
        end
      end

      char_hash.each do |k, v|
        return k  if char_hash[k] == :once
      end
    end

    def self.remove str, rem
      h = {}
      rem.chars.each {|i| h[i] = true}
      str.chars.each_with_index do |c, i|
        h[c] ? char = " " : char = c
        str[i] = char
      end
      str
    end

    def self.reverse sent
      sent.split.reverse.join(" ")
    end
  end
end