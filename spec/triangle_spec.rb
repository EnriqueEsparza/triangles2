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




end
