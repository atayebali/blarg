module Blarg
  class Power

    def initialize base, expo
      @base = base
      @expo = expo
    end

    def compute
      result = 1
      @expo.times { result *= @base }
      result
    end

    def short_compute
      b = 1
      while @expo != 0
        if @expo.even?
          @expo = @expo / 2
          @base = @base * @base
        else
          @expo = @expo - 1
          b = b  * @base
        end
     end
      @base
    end



  end
end