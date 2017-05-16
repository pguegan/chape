class Circle

  attr_reader :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * radius ** 2
  end

  def perimeter
    2 * Math::PI * radius
  end

  def scale(factor)
    Circle.new radius * factor
  end

  def ==(other)
    return false unless other.is_a?(Circle)
    radius == other.radius
  end

end