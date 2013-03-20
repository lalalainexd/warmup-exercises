class TriangleError < ArgumentError; end

def triangle side1, side2, side3

  validate_triangle!(side1, side2, side3)
  identify_triangle(side1, side2, side3)

end

def identify_triangle(side1, side2, side3)
  if( side1 == side2 && side2 == side3)
      :equilateral
  elsif (side1 != side2 && side1 != side3 && side2 != side3)
    :scalene
  else
    :isosceles
  end

end

def validate_triangle!(side1, side2, side3)
  raise TriangleError if illegal_triangle?(side1, side2, side3)
end

def illegal_triangle?(side1, side2, side3)
  illegal_values?(side1, side2, side3) || straight_sides?(side1, side2, side3)
end

def illegal_values? side1, side2, side3
  [side1, side2, side3].any?{|side| side <= 0}
end

def straight_sides? side1, side2, side3
  a,b,hypoteneuse = [side1, side2, side3].sort
  ( a + b ) <= hypoteneuse
end
