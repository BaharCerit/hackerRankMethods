require_relative 'new_year_chaos'

puts minimumBribes([2, 1, 5, 3, 4]) == 3
puts minimumBribes([2, 5, 1, 3, 4]) == "Too chaotic"
puts minimumBribes([5, 1, 2, 3, 7, 8, 6, 4]) == "Too chaotic"
puts minimumBribes([1, 2, 5, 3, 7, 8, 6, 4]) == 7
puts minimumBribes([1, 2, 5, 3, 4, 7, 8, 6]) == 4
