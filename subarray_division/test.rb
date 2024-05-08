require_relative 'subarray_division'

puts birthday([1, 2, 1, 3, 2], 3, 2) == 2
puts birthday([1, 1, 1, 1, 1, 1], 3, 2) == 0
puts birthday([4], 4, 1) == 1
