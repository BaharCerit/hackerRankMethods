# Complete the 'diagonalDifference' function below.
#
# The function is expected to return an INTEGER.
# The function accepts 2D_INTEGER_ARRAY arr as parameter.
#

def diagonalDifference(arr)
  # Write your code here
  left_diagonal_sum = 0
  right_diagonal_sum = 0
  arr.each_with_index do |row, i|
      left_diagonal_sum += row[i]
      right_diagonal_sum += row[arr.length - 1 - i]
  end
  absolute_difference = (left_diagonal_sum - right_diagonal_sum).abs
  return absolute_difference
end
