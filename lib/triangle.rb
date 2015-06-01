class Triangle
  define_method(:initialize) do |a, b, c|
    @a = a
    @b = b
    @c = c
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

end
