require_relative 'array_addition'

puts end_arr_add([1, 2, 3, 4], 5) == [1, 2, 3, 4, 5]
puts begin_arr_add([1, 2, 3, 4], 0) == [0, 1, 2, 3, 4]
puts index_arr_add([1, 2, 3, 4], 1, 5) == [1, 5, 2, 3, 4]
puts index_arr_multiple_add([1, 2, 3, 4], 2) == [1, 2, 1, 2, 3, 4]
