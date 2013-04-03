class Binary
  attr_reader :binary
  def initialize binary
    @binary = binary
  end

  def to_decimal
    something = []
    binary.split("").reverse.each_with_index{|num, index| something << num.to_i*2**index}
    something.inject(:+)
  end


end
