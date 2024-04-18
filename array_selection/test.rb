require_relative 'selection'

puts "Testing selection_sort method"

arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3]

if select_arr(arr) == [5, 5, 3, 1, 5, 3, 3, 3]
  puts "Test passed✅"
else
  puts "Test failed"
end

if reject_arr(arr) == [5, 5, 4, 1, 2, 5, 4]
  puts "Test passed✅"
else
  puts "Test failed"
end
