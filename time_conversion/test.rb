require_relative 'time_conversion'

puts "Testing time_conversion method"

if timeConversion("07:05:45PM") == "19:05:45"
  puts "true✅"
else
  puts "false❌"
end

if timeConversion("12:05:45AM") == "00:05:45"
  puts "true✅"
else
  puts "false❌"
end

if timeConversion("12:05:45PM") == "12:05:45"
  puts "true✅"
else
  puts "false❌"
end

if timeConversion("07:05:45AM") == "07:05:45"
  puts "true✅"
else
  puts "false❌"
end
