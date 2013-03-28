class Series
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
