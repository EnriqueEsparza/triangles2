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

  define_method(:equalateral?) do
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

  define_method(:not_triangle?) do
    if @a >= (@b + @c) || @b >= (@a + @c) ||  @c >= ( @a + @b)
      "not a triangle"
    else
      "this is a triangle, fool"

    end
  end


end
