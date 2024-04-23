require_relative  'diagonal_difference'

puts "Testing diagonal_difference method"

puts diagonalDifference([[11, 2, 4], [4, 5, 6], [10, 8, -12]]) == 15
puts diagonalDifference([[1, 2, 3], [4, 5, 6], [9, 8, 9]]) == 2
