require('pry')


class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
  end

  define_method(:a) do
    @a
  end

  define_method(:b) do
    @b
  end

  define_method(:c) do
    @c
  end

  define_method(:equilateral?) do
    if @a == @b && @a == @c
      true
    else
      false
    end
  end

  define_method(:isosceles?) do
    if @a == @b || @a == @c || @c == @b
      true
    else
      false
    end
  end

  define_method(:scalene?) do
    if @a != @b && @a != @c && @c != @b
      true
    else
      false
    end
  end

  define_method(:is_it_triangle?) do
    if @a < (@b + @c) || @b < (@a + @c) ||  @c < ( @a + @b)
      "triangle"
    else
      "not a triangle"

    end
  end


end
