require_relative 'lonely_integer'

puts "Testing lonely_integer method"

puts lonelyinteger([1, 2, 3, 4, 3, 2, 1]) == 4
puts lonelyinteger([1, 2, 3, 4, 3, 2, 1, 4, 5]) == 5
