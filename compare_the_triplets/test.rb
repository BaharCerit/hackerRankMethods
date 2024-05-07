require_relative 'compare_the_triplets'

puts compare_the_triplets([5, 6, 7], [3, 6, 10]) == [1, 1]
puts compare_the_triplets([17, 28, 30], [99, 16, 8]) == [2, 1]
puts compare_the_triplets([1, 2, 3], [1, 2, 3]) == [0, 0]
puts compare_the_triplets([1, 2, 3], [3, 2, 1]) == [1, 1]
puts compare_the_triplets([1, 2, 3], [1, 2, 3]) == [0, 0]
