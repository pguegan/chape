class Rectangle

  attr_reader :width, :height

  def initialize(width, height)
    @width, @height = width, height
  end

  def perimeter
    2 * (width + height)
  end

  def area
    width * height
  end

  def scale(factor)
    Rectangle.new width * factor, height * factor
  end

  def ==(other)
    return false unless other.is_a?(Rectangle)
    width == other.width && height == other.height
  end

end