class Series

  attr_reader :number

  def initialize number
    @number = number

  end

  def digits
    number.split("").collect{|digit| digit.to_i}
  end

  def slices slice_size

    combos = []
    digits.each_with_index do |digit, index|
      combo = digits[index..(index+slice_size-1)]
      combos << combo
    end

    combos.delete_if {|combo| combo.size < slice_size}

  end

  def largest_product size
    raise ArgumentError if size > number.size
    slices(size).max_by do |combo|
      combo.inject( :*)
    end.inject(:*)
  end

end
