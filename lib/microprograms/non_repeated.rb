require 'ostruct'
module Blarg
  class NonRepeated

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