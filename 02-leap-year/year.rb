class Year
  attr_reader :year

  def initialize year
    @year = year

  end

  def leap?
     plain_leap_year? || exceptional_century?
  end

  private

  def plain_leap_year?
    divisible_by_four? && not_century?
  end

  def divisible_by_four?
    year % 4 == 0
  end

  def exceptional_century?
    year % 400 == 0
  end

  def not_century?
    year % 100 != 0
  end

end
