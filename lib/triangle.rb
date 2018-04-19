class TriangleError < StandardError
  def message
    "Triangle is invalid with given measurements!"
  end
end

class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def equilateral?
    return :equilateral if @side1 == @side2 && @side2 == @side3
  end

  def isosceles?
    if (@side1 == @side2 && @side2 != @side3) ||
      (@side1 == @side3 && @side3 != @side2) ||
      (@side2 == @side3 && @side3 != @side1)
      return :isosceles
    end
  end

  def scalene?
    return :scalene if @side1 != @side2 && @side2 != @side3
  end

  def valid?
    if @side1 == 0
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    end
  end

  def kind
    self.valid?
    self.equilateral? || self.isosceles? || self.scalene?
  end
end
