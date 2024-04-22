require_relative 'mini_max_sum'

puts "Testing mini_max_sum method"

if miniMaxSum([1, 2, 3, 4, 5]) == "10 14"
  puts "true✅"
else
  puts "false❌"
end

if miniMaxSum([1, 3, 5, 7, 9]) == "16 24"
  puts "true✅"
else
  puts "false❌"
end
