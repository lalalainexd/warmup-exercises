class Trinary
  attr_reader :trinary_digits
  def initialize trinary_digits
      @trinary_digits = trinary_digits
  end

  def to_decimal
    trinary_digits.to_i
    trinary_places = trinary_digits.split("").reverse.collect{|place|place.to_i}

    total = 0
    trinary_places.each_index{|n| total += trinary_places[n] * 3**n }
    return total
  end
end
