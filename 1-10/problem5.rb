# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.

# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
require 'prime'
    divisibleNum = {}
    (2..20).each do |n|
        # take each value and return the factorization of value. (could be prime or non prime nums)
        n.prime_division.each do |base, power|
            if divisibleNum.include? base
                if power > divisibleNum[base]
                    divisibleNum[base] = power
                end
            else
                divisibleNum[base] = power
            end
        end
    end
    # convert the object to array and use built in ruby method to re-compose a prime factorization and return the product.
    puts Prime.int_from_prime_division(divisibleNum.to_a)
         

    