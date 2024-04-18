require_relative 'secret_message'

puts "Testing secret_message method"

if rot13(["Why did the chicken cross the road?"]) == ["Jul qvq gur puvpxra pebff gur ebnq?"]
  puts "true✅"
else
  puts "false❌"
end

if rot13(["Gb trg gb gur bgure fvqr!"]) == ["To get to the other side!"]
  puts "true✅"
else
  puts "false❌"
end
