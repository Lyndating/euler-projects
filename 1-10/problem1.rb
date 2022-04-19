# <p>If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.</p>
# <p>Find the sum of all the multiples of 3 or 5 below 1000.</p> 
result = 0 

(1...1000).each do |num|
    result += num if num % 3 == 0 || num % 5 == 0
end 
p result
