# Complete the 'findMedian' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def findMedian(arr)
  # Write your code here
  size_of_array = arr.length
  middle_index = size_of_array / 2

  sorted_array = arr.sort
  return sorted_array[middle_index]

end
