require_relative 'count_multibyte_char'

puts count_multibyte_char('¥1000')
puts count_multibyte_char('€2000•')
puts count_multibyte_char('1000')
puts count_multibyte_char('a£b€c£d¢e∞f∞g§h¶')
puts count_multibyte_char('¥1000€200%0@')
