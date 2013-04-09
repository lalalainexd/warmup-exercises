require_relative './calculator'
require 'minitest/autorun'
require 'minitest/pride'

class CalculatorTest < MiniTest::Unit::TestCase
  def setup
    @calculator = Calculator.new
  end

  def test_add_1
    assert_equal 2, @calculator.ask('What is 1 plus 1?')
  end

  def test_add_2
    assert_equal 3, @calculator.ask('What is 1 plus 2?')
  end

  def test_add_more_digits
    assert_equal 45801, @calculator.ask('What is 123 plus 45678?')
  end

  def test_add_negative_numbers
    assert_equal -11, @calculator.ask('What is -1 plus -10?')
  end

  def test_add_three_numbers
    assert_equal 3, @calculator.ask('What is 1 plus 1 plus 1?')
    assert_equal 19, @calculator.ask('What is 7 plus 9 plus 3?')
  end
end
