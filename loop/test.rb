require_relative '../until/coder'

coder = Coder.new

puts "Senaryo 1:"
puts "Before loop, oh_one? returns: #{coder.oh_one?}"
coder.practice_until_oh_one
puts "After loop, oh_one? returns: #{coder.oh_one?}"

puts "\nSenaryo 2:"
puts "Before loop, oh_one? returns: #{coder.oh_one?}"
3.times { coder.practice_until_oh_one }
puts "After loop, oh_one? returns: #{coder.oh_one?}"
