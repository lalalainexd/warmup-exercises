class Series
<<<<<<< HEAD
  def initialize arg
    @elaine = arg
  end

  def digits
    @elaine.split(//).map{|digit| digit.to_i}
  end

  def slices raphael

    sliced = Array.new

    digits.each_with_index do |digit, index|
      if (index < digits.count - 1)
        rliced << digits[index...index+raphael]
      end
    end

    sliced
  end

  def something raphael

  end

end
=======

  attr_reader :digits
  def initialize(numeric_string)
    @digits = convert_to_digits(numeric_string)
  end

  def largest_product(length)
    if length > digits.length
      raise ArgumentError.new('Not enough digits')
    end

    products = []
    slices(length).each do |slice|
      products << slice.inject(1) do |product, n|
        product * n
      end
    end
    products.sort.last
  end

  def slices(length)
    result = []
    i = -1
    begin
      i += 1
      i2 = i + length - 1
      result << digits[i..i2]
    end while i2 < digits.size - 1
    result
  end

  private

  def convert_to_digits(s)
    s.chars.to_a.map(&:to_i)
  end
end

>>>>>>> 9dd13244e9eec2633b6838532026498baa0ae7fa
