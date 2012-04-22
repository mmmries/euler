range = 1..100

sum_of_squares = range.inject(0){ |sum, i| sum + i**2 }
square_of_sums = range.inject(0){ |sum, i| sum + i }**2
difference = square_of_sums - sum_of_squares

puts "sosq = #{sum_of_squares}, sqos = #{square_of_sums} -> #{square_of_sums} - #{sum_of_squares} = #{difference}"