class Triangle

  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1, @side_2, @side_3 = side_1, side_2, side_3
  end

  def perimeter
    side_1 + side_2 + side_3
  end

  def area
    half_perimeter = perimeter / 2.0
    Math.sqrt half_perimeter * (half_perimeter - side_1) * (half_perimeter - side_2) * (half_perimeter - side_3)
  end

  def scale(factor)
    Triangle.new side_1 * factor, side_2 * factor, side_3 * factor
  end

  def ==(other)
    return false unless other.is_a?(Triangle)
    side_1 == other.side_1 && side_2 == other.side_2 && side_3 == other.side_3
  end

end