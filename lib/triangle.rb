require 'pry'

class Triangle

attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

   def kind
     if @a <= 0 || @b <= 0 || @c <=0
         raise TriangleError
      elsif @a == @b && @a == @c && @c == @b
      :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end

  if triangle != :equilateral || triangle != :isosceles || triangle != :scalene
    raise TriangleError
  end

end

    class TriangleError < StandardError
       def message
         "TriangleError"
       end
    end
