#!/bin/ruby

# require 'json'
# require 'stringio'

#
# Complete the 'timeConversion' function below.
#
# The function is expected to return a STRING.
# The function accepts STRING s as parameter.
#

def timeConversion(s)
    # Write your code here
    time_parts = s.split(/[:]/)
    hour = time_parts[0].to_i
    minute = time_parts[1]
    second = time_parts[2][0..1]
    period = time_parts[2][-2..]

    if period == "PM" && hour < 12
        hour += 12
    elsif period == "AM" && hour == 12
        hour = 0
    end

    return sprintf("%02d:%s:%s", hour, minute, second)

end

# fptr = File.open(ENV['OUTPUT_PATH'], 'w')

# s = gets.chomp

# result = timeConversion s

# fptr.write result
# fptr.write "\n"

# fptr.close()
