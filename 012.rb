require 'rubygems'
require 'rbtree'
require File.expand_path('lib/triangle_sequence', File.dirname(__FILE__))
require File.expand_path('lib/all_factors', File.dirname(__FILE__))

ts = TriangleSequence.new
max = 0
loop do
  num = ts.next
  factors = num.all_factors
  if factors.size > max then
    max = factors.size
    puts "#{num} has #{factors.size} factors"
  end
  break if factors.size >= 500
end