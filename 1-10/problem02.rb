# Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:

# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.

array = [1,2]
n = 0
sum = array[1]
while array.last < 4000000
    newnum = array[n] + array[n+1] 
    array.push(newnum)
    if newnum % 2 == 0
        sum += newnum
    end
    n += 1
end

puts sum 
        


