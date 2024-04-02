def factorial
  yield
end

puts "give me a number, or quit with 'control + c' "
given_number = gets.to_i

factorial do
  result = 1
  (1..given_number).each do |i|
    result *= i
  end
  puts "result = #{result}"
end
