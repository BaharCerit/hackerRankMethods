#
# Complete the 'countingSort' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY arr as parameter.
#

def countingSort(arr)
  # Write your code here
  freq_arr = Array.new(100, 0)
  arr.each { |num| freq_arr[num] += 1 }

  freq_arr
end
