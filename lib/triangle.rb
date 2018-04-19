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
    if (@side1 == @side2 && @side2 != @side3)
      return :isosceles
    end
  end

  def kind
    self.equilateral?
  end
end
