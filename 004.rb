potentials = []
999.downto(100).each do |i|
  999.downto(100).each do |j|
    product = i*j
    #puts "trying #{i}*#{j} = #{product}"
    ps = product.to_s
    if ps == ps.reverse
      #puts "palindrome = #{ps} = #{i}*#{j}"
      potentials << [product, i, j]
      break
    end
  end
end

potentials.sort_by!{ |p| p.first }

p potentials.last