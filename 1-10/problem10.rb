# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

require('prime')
sum = 0
primes_list = Prime.each(2000000) do |prime|
    sum += prime
end

puts sum 