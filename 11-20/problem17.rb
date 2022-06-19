# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?


# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

ten_counter = {1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine"}
twenty_counter = {11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen",16=>"sixteen", 17=>"seventeen",18=>"eighteen", 19=>"nineteen" }
extra_tens = {10=>"ten", 20=>"twenty", 30=>"thirty", 40=>"fourty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty",90=>"ninty"}

result = 0
(1...1000).map do |num|
    name_of_num = ""
    if num >= 100
        name_of_num += ten_counter[num/100] 
        name_of_num +="hundred"
        num = num % 100
        if num == 0
            result +=name_of_num.length
            next
        end
        name_of_num += "and"
    end

    if num < 10
        name_of_num += ten_counter[num]
    elsif num == 10
        name_of_num += extra_tens[num]
    elsif num < 20
        name_of_num += twenty_counter[num] 
    else 
        name_of_num += extra_tens[num-num %10]
        if num %10 != 0 
            name_of_num += ten_counter[num%10]
        end
    end
    puts name_of_num
    result += name_of_num.length
end

    result += 'onethousand'.length
    puts result

    



    