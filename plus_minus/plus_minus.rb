#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'plusMinus' function below.
#
# The function accepts INTEGER_ARRAY arr as parameter.
#

def plusMinus(arr)
  # Write your code here
  positive_count = 0
  negative_count = 0
  zero_count = 0

  arr.each do |num|
    if num > 0
        positive_count += 1
    elsif num < 0
        negative_count += 1
    else
        zero_count += 1
    end
  end

  total_count = arr.size.to_f
  positive_ratio = positive_count / total_count
  negative_ratio = negative_count / total_count
  zero_ratio = zero_count / total_count

  puts sprintf("%.6f", positive_ratio)
  puts sprintf("%.6f", negative_ratio)
  puts sprintf("%.6f", zero_ratio)
end

n = gets.strip.to_i

arr = gets.rstrip.split.map(&:to_i)

plusMinus arr
