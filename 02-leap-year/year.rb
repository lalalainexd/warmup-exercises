class Year

<<<<<<< HEAD
  attr_reader :year
  def initialize(number)
    @year = number.to_i
  end

  def leap?
    by4 && (!by100 || by400)
  end

  private

  def by4
    (year % 4) == 0
  end

  def by100
    (year % 100) == 0
  end

  def by400
    (year % 400) == 0
  end

end

  def initialize year
    @year = year
  end

  def leap?
    divisible_by_4? && !(divisible_by_100? || divisible_by_400?)

  end


  def divisible_by_4?
    @year % 4 == 0
  end

  def divisible_by_100?
    @year % 100 == 0
  end

  def divisible_by_400?
    @year % 400 == 0
  end
end


class Fixnum
  def leap_year?
        Year.new(self).leap?
  end
end

puts Year.new(1996).leap?

puts 2000.leap_year?
