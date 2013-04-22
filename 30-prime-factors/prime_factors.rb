class PrimeFactors

  def self.for num
    factors = []
    curr = num
    primes.each do | prime |
      if curr % prime == 0
        factors << prime
        curr = curr / prime
        unless curr.prime?
          factors << self.for(curr)
        else
          factors << curr
          break
        end
      end
    end

    factors.flatten
  end

  def self.prime? num
    puts "blah"
    if primes.include? num
      true
    else
      if primes.any? {|p| num % p != 0}
        primes << num
        true
      else
        false
      end
    end

  end

  def self.primes
    @primes ||= [2,3,5]
  end

end

class Fixnum
  def prime?
    PrimeFactors.prime?(self)
  end
end
