require_relative "colourful_algorithm"

puts "Testing colourful? method"
number = 263

if colorful?(number) == true
  puts "#{number} is colourful : Test passed"
else
  puts "#{number} is should colourful: Test failed"
end

number = 236
if colorful?(number) == false
  puts "#{number} is Not colourful : Test passed"
else
  puts "#{number} is should not colourful: Test failed"
end

number = 999
if colorful?(number) == false
  puts "#{number} is Not colourful : Test passed"
else
  puts "#{number} is should not colourful: Test failed"
end

number = 10
if colorful?(number) == false
  puts "#{number} is Not colourful : Test passed"
else
  puts "#{number} is should not colourful: Test failed"
end

number = 1

if colorful?(number) == true
  puts "#{number} is colourful : Test passed"
else
  puts "#{number} is should colourful: Test failed"
end

number = 23

if colorful?(number) == true
  puts "#{number} is colourful : Test passed"
else
  puts "#{number} is should colourful: Test failed"
end
