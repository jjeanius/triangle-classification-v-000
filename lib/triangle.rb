require 'pry'

class Triangle

attr_accessor :a, :b, :c, :triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @triangle = triangle
  end

   def kind
      if @a == @b && @a == @c && @c == @b
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end

    #  @triangle != :equilateral || @triangle != :isosceles || @triangle != :scalene
    #     raise TriangleError
    #   end

    end

    class TriangleError < StandardError
       def message
         "TriangleError"
       end
    end
