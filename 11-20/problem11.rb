# read the file and get the data
# file = File.open("problem11.txt")
# lines = file.read()
# file.close()
# puts lines.split("\n")
lines = File.readlines("problem11.txt")


# set up the inital values
numberList = []
max_product = 0
length = 4

# loop through the lines 
lines.map do |line|
    numberList.push(line.split().map{|i| i.to_i});
end



# (0..numberList.length-1).each_slice(length) do |arr|


(0..(numberList.length - 1)).each do |i|
    # loop through each line
  (0..(numberList.length - length)).each do |j|
    # (treat every four * four numbers as a block)
    selected = []

    # loop through every four adjacent numbers combinations in that row or column 
    selected.push(numberList[i][j..(j+length-1)])
    # add four adjacement numbers in row as an array in selected
    selected.push(numberList[j..(j+length-1)].map{ |arr| arr[i] })
    # add four adjacement numbers in column as an array in selected

    if i <= numberList.length - length
        # loop through two combinations in diagonally direction
        # push the two combinations as arrays in selected
        selected.push([numberList[i][j], numberList[i+1][j+1],numberList[i+2][j+2],numberList[i+3][j+3]])
        selected.push([numberList[i+length-1][j], numberList[i+length-2][j+1],numberList[i+length-3][j+2],numberList[i+length-4][j+3]])
    end
    # for each loop, find the max product from that selected array
    # find the products of each array of selected array by using .map() and .inject()
    # return a new array
    # and then find the max amount from the new array by .max
    product = selected.map{|arr| arr.inject(:*)}.max
    # find the max product and assign it to the max_product variable
    if product > max_product
        # if the product found is bigger then the initial max_product
        max_product = product
    end
    end
end 

puts max_product;


