class Triangle

  attr_accessor :sides

  def initialize side1, side2, side3

    @sides = [side1, side2, side3].sort
  end

  def kind

    if sides.any?{|s| s <= 0} || illegal?
      raise TriangleError
    end

    if sides.uniq.size == 2
      :isosceles
    elsif sides.uniq == sides
      :scalene
    else
      :equilateral
    end
  end

  def illegal?

    sides[0] + sides[1] <= sides[2]
  end
end

class TriangleError < Exception; end


