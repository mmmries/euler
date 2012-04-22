range = 1..20
num = 20
loop do
  num += 1
  if range.all?{ |i| num % i == 0 } then
    puts "first number divisible by #{range} is #{num}"
    break
  end
end   