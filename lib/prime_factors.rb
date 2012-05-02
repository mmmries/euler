require File.expand_path("prime_sequence", File.dirname(__FILE__))

class Integer
  def prime_factors(k=10)
    remainder = self
    factors = [] #this will be populated with pairs of numbers where [x,y] = x**y
    ps = PrimeSequence.new(k)
    while remainder > 1 do
      p = ps.next
      while remainder % p == 0 do
        factors << p
        remainder /= p
        #puts "found factor #{p} - rem = #{remainder}"
      end
    end
    factors
  end
end