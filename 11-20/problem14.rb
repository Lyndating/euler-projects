# The following iterative sequence is defined for the set of positive integers:

# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

# Using the rule above and starting with 13, we generate the following sequence:

# 13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
# It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

# Which starting number, under one million, produces the longest chain?

# NOTE: Once the chain starts the terms are allowed to go above one million.

possible_sequence = [13,40,20,10,5,16,8,4,2,1]
longest_chain = possible_sequence.length
result = 13 


def update_num (num)
    if num.even?
        num = num/2
    else
        num =3* num +1
    end
end


(13..1000000).map do |num|
    update = update_num(num)
    length =0 
    while update
        if possible_sequence.find_index(update)
            break
        else 
            update = update_num(update)
            length +=1 
        end
    end
    length += possible_sequence[possible_sequence.find_index(update)..(possible_sequence.length-1)].length
    if longest_chain < length
        longest_chain = length
        result = num 
    end
end

puts longest_chain, result      
