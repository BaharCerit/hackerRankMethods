require_relative 'breaking_the_records'

puts breakingRecords([10, 5, 20, 20, 4, 5, 2, 25, 1]) == [2, 4]
puts breakingRecords([3, 4, 21, 36, 10, 28, 35, 5, 24, 42]) == [4, 0]
puts breakingRecords([100, 45, 41, 60, 17, 41, 45, 43, 100, 40, 89, 92, 34, 6, 64, 7, 37, 81, 32, 50]) == [0, 4]

