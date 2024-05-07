require_relative 'birthday_cake_candles'

puts max_height_candles([3, 2, 1, 3]) == 2
puts max_height_candles([4, 4, 1, 3]) == 2
puts max_height_candles([4, 4, 4, 4]) == 4
puts max_height_candles([4, 2, 8, 4, 8, 4, 8, 7, 3, 8, 8]) == 5
