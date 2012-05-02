require 'rubygems'
require 'rbtree'
require File.expand_path("prime_factors", File.dirname(__FILE__))

class Integer
  def all_factors(k=10)
    prime_factors = self.prime_factors(k)
    factors = RBTree[] #first start by adding 1, then add all possible combinations
    factors[1] = nil
    factors[self] = nil
    prime_factors.each do |pf|
      factors[pf] = nil
    end
    2.upto(prime_factors.size).each do |grouping|
      prime_factors.combination(grouping).each do |group|
        prod = group.inject(1){ |prod, i| i*prod }
        factors[prod] = nil if self % prod == 0
      end
    end
    
    #factors.keys.each do |f|
    #  factors[-1 * f] = nil
    #end
    
    factors.keys
  end
end