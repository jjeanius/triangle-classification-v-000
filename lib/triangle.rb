class Triangle

attr_accessor :equilateral, :isosceles, :scalene, :triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

   def kind
    if @a == @b && @a == @c && @c == @b
      :equilateral
    elsif @a == @b || @a == @c || @b == @c
        :isosceles
    elsif @a <= 0 || @b <= 0 || @c <=0 || !:equilateral && !:isosceles && !:scalene
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    else
        :scalene
    end
  end
end

    class TriangleError < StandardError
       def message
         "TriangleError"
       end
    end
