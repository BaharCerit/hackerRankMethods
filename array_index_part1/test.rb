require_relative 'array_index'

puts element_at([1, 2, 3, 4], 2) == 3

puts inclusive_range([1, 2, 3, 4], 1, 2) == [2, 3]

puts non_inclusive_range([1, 2, 3, 4], 1, 2) == [2]

puts start_and_length([1, 2, 3, 4], 1, 2) == [2, 3]
