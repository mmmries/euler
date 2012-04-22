require 'spec_helper'
require File.expand_path('../lib/prime_sequence', File.dirname(__FILE__))

describe PrimeSequence do
  it "should return the next prime" do
    ps = PrimeSequence.new
    [2,3,5,7,11,13].each do |p|
      ps.next.should == p
    end
  end
  
  it "should work up to the 10_001st prime" do
    ps = PrimeSequence.new
    10_000.times do
      ps.next
    end
    
    ps.next.should == 104743
  end
end