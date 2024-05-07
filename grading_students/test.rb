require_relative 'grading_students'

puts grading_students([73, 67, 38, 33]) == [75, 67, 40, 33]
puts grading_students([73, 67, 38, 33, 100]) == [75, 67, 40, 33, 100]
puts grading_students([73, 67, 38, 33, 100, 99]) == [75, 67, 40, 33, 100, 100]
puts grading_students([73, 67, 38, 33, 100, 99, 98]) == [75, 67, 40, 33, 100, 100, 100]
