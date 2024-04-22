def miniMaxSum(arr)
  # Sort the array in non-decreasing order
  sorted_arr = arr.sort

  # Calculate minimum sum
  min_sum = sorted_arr[0..3].sum

  # Calculate maximum sum
  max_sum = sorted_arr[1..4].sum

  # Print the minimum and maximum sums
  return "#{min_sum} #{max_sum}"
end
