def square_of_sum(my_array, proc_square, proc_sum)
  sum = proc_sum.call(my_array)
  return 0 if sum.nil?
  proc_square.call(sum)
end

proc_square_number = proc { |n| n * n }
proc_sum_array     = proc { |arr| arr.reduce(:+) }

my_array = gets.split().map(&:to_i)

puts square_of_sum(my_array, proc_square_number, proc_sum_array)
