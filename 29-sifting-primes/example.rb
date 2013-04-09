class Sieve
  attr_reader :max
  def initialize max
    @max = max
  end

  def primes
    numbers = Array(2..max)

    numbers.each do |n|
      numbers = remove_multiples n, numbers
    end
  end

  def remove_multiples n, array
    array.delete_if {|x| x % n == 0 && x != n }
  end

end
