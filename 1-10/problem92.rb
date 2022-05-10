# A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.

# For example,

# 44 → 32 → 13 → 10 → 1 → 1
# 85 → 89 → 145 → 42 → 20 → 4 → 16 → 37 → 58 → 89

# Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. What is most amazing is that EVERY starting number will eventually arrive at 1 or 89.

# How many starting numbers below ten million will arrive at 89?


$sumOptions = {}
(0..9).each do |num|
    $sumOptions[num] = num * num
end 

# def updateNum (num)
#     sum = 0
#     num.to_s.split("").each do |char|
#         sum += $sumOptions[char]
#     end
#     sum
# end
def updateNum (num)
    sum = 0
    while num > 0
        firstDigit = num % 10
        num = num / 10
        sum += $sumOptions[firstDigit]
    end
    sum
end

count = 0 
cache = Set.new
failedCache = Set.new
(1..10000000).each do |num|
    addCache = num < 1000
    update = updateNum(num)
    chain = [num, update]
    while update 
        if update == 1 || failedCache.include?(update)
            if addCache
                chain.each do |item|
                    failedCache << item
                end
            end
            break
        elsif update == 89 || cache.include?(update) 
            if addCache
                chain.each do |item|
                cache << item
                end
            end
            count += 1
            break
        else
            update = updateNum(update)
            chain.push(update)
        end
    end
end

puts count
