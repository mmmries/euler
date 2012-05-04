num = 2**1000
puts num
puts num.to_s.chars.inject(0){ |sum, char| sum + char.to_i }