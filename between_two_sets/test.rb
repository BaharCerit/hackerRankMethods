require_relative 'between_two_sets'

puts getTotalX([2, 4], [16, 32, 96]) == 3
puts getTotalX([3, 6, 9], [36, 72]) == 2
puts getTotalX([1], [48, 72]) == 8
