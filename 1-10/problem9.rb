# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a**2 + b**2 = c**2
# For example, 3**2 + 4**2 = 9 + 16 = 25 = 5**2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

#conditions:
# a**2 + b**2 = c**2 =  (1000 - (a+b))**2
# a^2 + b^2 = (1000-(a+b))^2 = 1000 ^2 + a^2 + b^2 + 2ab - 2*1000*(a+b)
# 2*1000*(a+b) = 1000^2 + 2*a*b
# 1000 * (a+b) = 500000 + a*b 

# a + b + c = 1000

(1..1000).each do |a|
    (a..1000).each do |b|
        if 1000 * (a + b) == 500000 + (a * b)
            puts a * b * (1000- a- b)
            # puts a, b, (1000-a-b)
            break
        end
    end      
end
