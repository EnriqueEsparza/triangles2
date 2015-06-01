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

end
