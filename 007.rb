require File.expand_path('lib/prime_sequence', File.dirname(__FILE__))

ps = PrimeSequence.new
10_000.times do
  ps.next
end

puts "the 10,001th prime number is #{ps.next}"