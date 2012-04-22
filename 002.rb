class Fib
  def initialize
    @last_two = []
  end
  
  def next
    n = find_next_number
    @last_two.push n
    @last_two.shift if @last_two.size > 2
    return n
  end
  
  private
  def find_next_number
    if @last_two.size == 0
      return 1
    elsif @last_two.size == 1
      return 2
    else
      return @last_two.inject(0) { |sum, i| sum + i }
    end
  end
end

f = Fib.new
sum = 0
loop do
  n = f.next
  break if n >= 4_000_000
  
  sum += n if n % 2 == 0
end

puts sum