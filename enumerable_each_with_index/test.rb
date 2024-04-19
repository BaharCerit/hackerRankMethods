require_relative 'each_with_index'

puts "Testing each_with_index method"
puts skip_animals(['leopard', 'bear', 'fox', 'wolf'], 2) == ["2:fox", "3:wolf"]
puts skip_animals(['leopard', 'bear', 'fox', 'wolf', "cat", "dog", "duck"], 3) == ["3:wolf", "4:cat", "5:dog", "6:duck"]
puts skip_animals(['leopard', 'bear', 'fox', 'wolf', "cat", "dog", "duck"], 0) == ["0:leopard", "1:bear", "2:fox", "3:wolf", "4:cat", "5:dog", "6:duck"]

