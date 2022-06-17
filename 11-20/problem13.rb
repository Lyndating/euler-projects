# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.

file = File.open('problem13.txt')
lines = file.read()
file.close()


digitsList = []
sum =0
lines.split(/\n+/).map{|i| 
    digitsList.push(i.to_i)
}

s = digitsList.sum.to_s
puts s[0..9]
