require_relative 'array_index'

puts neg_pos([1, 2, 3, 4], 1) == 4
puts first_element([1, 2, 3, 4]) == 1
puts last_element([1, 2, 3, 4]) == 4
puts first_n([1, 2, 3, 4], 2) == [1, 2]
puts drop_n([1, 2, 3, 4], 2) == [3, 4]

