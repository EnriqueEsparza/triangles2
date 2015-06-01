require "rspec"
require "triangle"

describe(Triangle) do
  describe("#equalateral?") do
    it("will return false if sides a, b and c are not equal to each other") do
      test_triangle = Triangle.new(12, 12, 6)
      expect(test_triangle.equalateral?()).to(eq(false))
    end
  end

    it("will return true if sides a, b, c, are equal to each other") do
      test_triangle = Triangle.new(12, 12, 12)
      expect(test_triangle.equalateral?()).to(eq(true))
    end
end
