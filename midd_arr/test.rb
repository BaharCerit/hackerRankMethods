require_relative 'find_median'

puts "Testing middle_way method"

if findMedian([1, 2, 3, 7, 8, 5, 0]) == 3
  puts "all tests are true✅"
else
  puts "false❌"
end

if findMedian([1, 6, 2, 9, 3, 7, 8, 4, 5]) == 5
  puts "all tests are true✅"
else
  puts "false❌"
end
