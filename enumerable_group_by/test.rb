require_relative 'group_by'

puts "Testing group_by_marks method"

marks = { "Ramesh" => 23, "Vivek" => 40, "Harsh" => 88, "Mohammad" => 60 }
puts group_by_marks(marks, 30) == {"Failed"=>[["Ramesh", 23]], "Passed"=>[["Vivek", 40], ["Harsh", 88], ["Mohammad", 60]]}

puts group_by_marks_with_each(marks, 30) == {"Failed"=>[["Ramesh", 23]], "Passed"=>[["Vivek", 40], ["Harsh", 88], ["Mohammad", 60]]}
