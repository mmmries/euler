require File.expand_path('lib/prime_sequence', File.dirname(__FILE__))

ps = PrimeSequence.new(50)
sum = 0
while (p = ps.next) < 2_000_000 do
  sum += p
end

puts sum