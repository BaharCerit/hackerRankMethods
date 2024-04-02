require_relative 'square_of_sum'

proc_square_number = proc { |n| n * n }
proc_sum_array     = proc { |arr| arr.reduce(:+) }

my_array = [1, 2, 3]

puts square_of_sum(my_array, proc_square_number, proc_sum_array) == 36
puts square_of_sum([2, 5, 3], proc_square_number, proc_sum_array) == 100
