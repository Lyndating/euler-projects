# The four adjacent digits in the 1000-digit indexber that have the greatest product are 9 × 9 × 8 × 9 = 5832.

# data from problem8-data.txt 
file = File.open("problem8-data.txt")
file_data = file.readlines.map(&:chomp)
thousand_digit = file_data.join("")
puts thousand_digit



# Find the thirteen adjacent digits in the 1000-digit indexber that have the greatest product. What is the value of this product?
def productOfArray (arr)
    arr.inject{|value, num| value * num} 
end

product  = 0
numsArray = thousand_digit.chars.map{|cha| cha.to_i}
(0..(thousand_digit.length - 13)).each do |index|
    if productOfArray(numsArray[index..(index+12)]) > product
        product = productOfArray(numsArray[index..(index+12)])
    end
end 
puts product