require_relative 'lambda'

square = ->(n) { n ** 2 }
plus_one = ->(n) { n + 1 }
into_2 = ->(i) { i * 2 }
adder = ->(x, y) { x + y }
values_only = ->(hash) { hash.values }

input_number_1 = 2
input_number_2 = 3
input_hash = {f: 1, s: 2}

a = square.(input_number_1); b = plus_one.(input_number_2);c = into_2.(input_number_1);
d = adder.(input_number_1, input_number_2);e = values_only.(input_hash)

p a == 4; p b == 4; p c == 4; p d == 5; p e == [1, 2]
