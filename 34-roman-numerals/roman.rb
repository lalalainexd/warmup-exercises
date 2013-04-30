class Fixnum

  def to_roman
    ten + one
  end

  def one
    ones = self % 10
    special_numbers[ones-1]
  end

  def ten
    tens = self/10
    string = ""
    if tens < 4
      tens.times { string += "X" }
    else
      puts tens.inspect
      string = special_tens[tens]
    end
    string
  end

  def special_numbers
    %w[I II III IV V VI VII VIII IX]
  end

  def special_tens
    tens = Array.new("")
    tens[4] = "XL"
    tens[5] = "L"
    tens
  end
end
