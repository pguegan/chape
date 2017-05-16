class RegularPolygon

  attr_reader :radius, :sides_count, :sides_length

  def initialize(radius, sides_count)
    @radius, @sides_count = radius, sides_count
    @sides_length = 2 * radius * Math.sin(Math::PI / sides_count)
  end

  def perimeter
    sides_length * sides_count
  end

  def area
    base_triangle.area * sides_count
  end

  def scale(factor)
    RegularPolygon.new radius * factor, sides_count
  end

  def ==(other)
    return false unless other.is_a?(RegularPolygon)
    radius == other.radius && sides_count == other.sides_count
  end

  private

  def base_triangle
    Triangle.new radius, radius, sides_length
  end

end