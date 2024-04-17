require_relative 'deletion'

puts "Testing delete_element method"
arr = [5, 6, 5, 4, 3, 1, 2, 5, 4, 3, 3, 3]
index = 2
val = 5

if end_arr_delete(arr) == 3
  puts "Test passed"
else
  puts "Test failed"
end

if start_arr_delete(arr) == 5
  puts "Test passed"
else
  puts "Test failed"
end

if delete_at_arr(arr, index) == 4
  puts "Test passed"

else
  puts "Test failed"
end

if delete_all(arr, val) == 5
  puts "Test passed"
else
  puts "Test failed"
end
