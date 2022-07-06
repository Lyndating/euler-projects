# You are given the following information, but you may prefer to do some research for yourself.

# 1 Jan 1900 was a Monday. 1900/01/01 Monday
# Thirty days has September, 30days: Sep, Apr, Jun, Nov
# April, June and November.
# All the rest have thirty-one, 31days: Jan, Mar, May, Jul, Aug,Oct,Dec
# Saving February alone,
# Which has twenty-eight, rain or shine. 28days: Feb
# And on leap years, twenty-nine.
# A leap year occurs on any year evenly divisible by 4, but not on a century unless it is divisible by 400.
# How many Sundays fell on the first of the month during the twentieth century (1 Jan 1901 to 31 Dec 2000)?

require "date"

#  first Sunday 
startDate = Date.new(1901,01,06)
startDay = startDate.strftime('%a %d %b %Y')
count = 0

while startDate < Date.new(2000, 12, 31)
    startDate +=7
    if startDate.day == 1
        count +=1
    end
end

p count
 