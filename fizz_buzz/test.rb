require_relative 'fizz_buzz'

puts "Testing fizz_buzz method"

if fizzBuzz(15) == (1..15)
  puts "all tests are true✅"
else
  puts "false❌"
end

if fizzBuzz(5) == (1..5)
  puts "all tests are true✅"
else
  puts "false❌"
end

if fizzBuzz(65) == (1..65)
  puts "all tests are true✅"
else
  puts "false❌"
end
