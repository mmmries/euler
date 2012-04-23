#find a * b *c
#where a**2 + b**2 = c**2 and a + b + c = 1000

1.upto(1000).each do |a|
  1.upto(1000).each do |b|
    1.upto(1000).each do |c|
      if ( a**2 + b**2 == c**2 ) && ( a+b+c == 1000 ) then
        puts "a = #{a}, b=#{b}, c=#{c}, a*b*c = #{a*b*c}"
        raise "Found the solution"
      end
    end
  end
end
  