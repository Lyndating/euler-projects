# Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.

# For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?


names = File.read("problem22.txt").delete("\"").split(",").sort

result = 0

# interate enumerable with .each_with_index()
names.each_with_index do |name, index|
    result += (name.downcase.bytes.map{|b| b-96}.sum)*(index+1)
end

p result
    
