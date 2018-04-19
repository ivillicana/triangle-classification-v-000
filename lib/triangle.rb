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

  def scalene
    return :scalene if @side1 != @side2 && @side2 != @side3
  end

  def kind
    self.equilateral? || self.isosceles?
  end
end
