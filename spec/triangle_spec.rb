require "rspec"
require "triangle"

describe(Triangle) do
  describe("#equilateral?") do
    it("will return false if sides a, b and c are not equal to each other") do
      test_triangle = Triangle.new(12, 12, 6)
      expect(test_triangle.equilateral?()).to(eq(false))
    end

    it("will return true if sides a, b, c, are equal to each other") do
      test_triangle = Triangle.new(12, 12, 12)
      expect(test_triangle.equilateral?()).to(eq(true))
    end
  end

  describe("#isosceles?") do
    it("will return false if no two sides are equal") do
      test_triangle = Triangle.new(12, 16, 9)
      expect(test_triangle.isosceles?()).to(eq(false))
    end

    it("will return true if only two of three sides are equal") do
      test_triangle = Triangle.new(12, 12, 6)
      expect(test_triangle.isosceles?()).to(eq(true))
    end
  end

  describe("#scalene?") do
    it("will return false if any sides are equal to each other") do
      test_triangle = Triangle.new(12, 12, 6)
      expect(test_triangle.scalene?()).to(eq(false))
    end

    it("will return true if none of the three sides are equal to each other") do
      test_triangle = Triangle.new(12, 6, 4)
      expect(test_triangle.scalene?()).to(eq(true))
    end
  end

  describe("#is_it_triangle?") do
    it("will return 'triangle' if one side is less than the other two sides combined") do
      test_triangle = Triangle.new(10, 4, 7)
      expect(test_triangle.is_it_triangle?()).to(eq("triangle"))
    end

    it("will return 'not a triangle' if one side is greater than or equal to the other two sides combined") do
      test_triangle = Triangle.new(30, 10, 10)
      expect(test_triangle.is_it_triangle?()).to(eq("not a triangle"))
    end
   end

  describe('#a') do
    it("returns the measurement of side 1 of triangle") do
      test_triangle = Triangle.new(30, 1, 8)
      expect(test_triangle.a()).to(eq(30))
    end
  end
  describe('#b') do
    it("returns the measurement of side 1 of triangle") do
      test_triangle = Triangle.new(30, 1, 8)
      expect(test_triangle.b()).to(eq(1))
    end
  end
  describe('#c') do
    it("returns the measurement of side 1 of triangle") do
      test_triangle = Triangle.new(30, 1, 8)
      expect(test_triangle.c()).to(eq(8))
    end
  end




end
