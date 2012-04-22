class PrimeSequence
  def initialize
    @current = nil
  end
  
  def next
    n = find_next_number
    @current = n
    return n
  end
  
  private
  def find_next_number
    return 2 if @current.nil?
    n = @current
    loop do
      n += 1
      break if n.prime_mr?
    end
    n
  end
end

class Integer    
  def prime_mr?(k = nil)
    return false if self.even?
    k ||= 10
    1.upto(k).all? do
      s, d = (self-1).find_power_and_mod
      a = Random.rand(2..(self-1))
      res = 0.upto(s).find do |r|
        res = a.rosetta_mod_exp(2**r * d, self)
        res == (self-1) || res == 1
      end
    end  
  end
  
  def find_power_and_mod
    t = self
    s = 0
    while t.even? do
      s += 1
      t /= 2
    end
    d = t
    [s, d]
  end
  
  def rosetta_mod_exp(exp, mod)
    exp < 0 and raise ArgumentError, "negative exponent"
    prod = 1
    base = self % mod
    until exp.zero?
      exp.odd? and prod = (prod * base) % mod
      exp >>= 1
      base = (base * base) % mod
    end
    prod
  end
  
  def prime_factors
    remainder = self
    factors = [] #this will be populated with pairs of numbers where [x,y] = x**y
    ps = PrimeSequence.new
    while remainder > 1 do
      p = ps.next
      while remainder % p == 0 do
        factors << p
        remainder /= p
        puts "found factor #{p} - rem = #{remainder}"
      end
    end
    factors
  end
end

#puts "6857.prime_mr? = #{6857.prime_mr?}"
#puts "4641503.prime_mr? = #{4641503.prime_mr?}"
#puts "221.prime_mr? = #{221.prime_mr?}"

[221, 13195, 24592384, 83487234095, 600851475143].each do |n|
  puts "#{n}.prime_factors = #{n.prime_factors}"
end