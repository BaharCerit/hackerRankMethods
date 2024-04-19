require_relative 'any_all_none_find'

puts "Testing any_all_none_find method"
puts func_any({1=>2, 3=>4, 5=>"t"}) == true
puts func_all({1=>2, 3=>4, 5=>6}) == true
puts func_none({1=>2, 3=>4, 5=>6}) == true
puts func_find({1=>2, 3=>4, 5=>6}) == [1, 2]

if func_any({"n"=>"o", "n"=>"e", "o"=> 1}) == false && func_all({1=>"n", 3=>"o", 5=>"n"}) == false && func_none({1=>nil, 3=>nil, 5=>nil}) == false && func_find({"y"=>"a", "e"=>"b", "s"=>"c"}) == ["y", "a"]
  puts "true✅"
else
  puts "false❌"
end
