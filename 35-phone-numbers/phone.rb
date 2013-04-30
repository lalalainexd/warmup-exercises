class Phone
  attr_reader :phone_number
  def initialize phone_number
    @phone_number = normalize(phone_number)
  end

  def number
    if valid_us_number?
      "1234567890"
    else
      "0000000000"
    end
  end

  def valid_us_number?
    phone_number.length == 11 && phone_number[0] == "1"
  end

  def normalize digits
    digits_only = remove_symbols(digits)
    add_country_code(digits_only)

  end

  def add_country_code digits
    if digits.length == 10
      digits = "1"+digits
    end
    digits
  end

  def remove_symbols digits
    digits.scan(/\d+/).join
  end

  def area_code
    phone_number[1..3]
  end

  def to_s
    "(#{area_code}) #{phone_number[4..6]}-#{phone_number[7..10]}"
  end

end
