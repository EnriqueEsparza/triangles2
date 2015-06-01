require "rspec"
require "triangle"

describe(Triangle) do
  describe("#equalateral?") do
    it("will return false if sides a, b and c are not equal to each other") do
      test_triangle = Triangle.new(12, 12, 6)
      expect(test_triangle.equalateral?()).to(eq(false))
    end

    it("will return true if sides a, b, c, are equal to each other") do
      test_triangle = Triangle.new(12, 12, 12)
      expect(test_triangle.equalateral?()).to(eq(true))
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

  describe("#not_triangle") do
    it("will return 'this is a triangle' if one side is less than the other two sides combined") do
      test_triangle = Triangle.new(10, 4, 7)
      expect(test_triangle.not_triangle()).to(eq("this is a triangle, fool"))
    end

    it("will return 'not a triangle' if one side is greater than or equal to the other two sides combined") do
      test_triangle = Triangle.new(30, 1, 1)
      expect(test_triangle.not_triangle()).to(eq("not a triangle"))
    end
  end




end
