# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.
# def reverse(arr)
#     reverse = []
#     index = arr.length
#     until index == 0 do
#         reverse << arr[index -1]
#     end
#     reverse
# end

def is_palindrome(str)
    str == str.reverse
end

max_item = 0
listOfNum = 999..100
(listOfNum.first).downto(listOfNum.last).each do |num1| 
    (num1).downto(listOfNum.last).each do |num2| 
        if is_palindrome((num1*num2).to_s)
            if num1 * num2 > max_item
                max_item = num1 * num2
            end
        end
    end
end

puts max_item