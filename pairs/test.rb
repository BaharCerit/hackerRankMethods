require_relative 'pairs'

puts pairs(2, [1, 5, 3, 4, 2]) == 3
puts pairs(2, [1, 3, 4, 2]) == 2
puts pairs(3, [1, 3, 4, 2, 5]) == 2
puts pairs(3, [1, 3, 4, 15, 19, 8]) == 1
