class Sieve
<<<<<<< HEAD
  attr_reader :max
  def initialize max
    @max = max
  end

  def primes
    numbers = Array(2..max)
    numbers.each do |n|
      remove_multiples n, numbers
    end
  end

  def remove_multiples n, numbers
    numbers.delete_if {|x| x % n == 0 && x != n }
  end

end
=======

  attr_reader :limit
  def initialize(limit)
    @limit = limit
  end

  def primes
    @primes ||= calculate
  end

  private
  def calculate
    numbers = (2..limit).to_a
    primes = []
    begin
      target = numbers.shift
      primes << target
      numbers.reject! {|i| i % target == 0 }
    end until numbers.empty?
    primes
  end

end

>>>>>>> 001b90ed8cef400488f4d6ed8791677c19c3383a
