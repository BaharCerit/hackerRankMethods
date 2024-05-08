#
# Complete the 'divisibleSumPairs' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  2. INTEGER k
#  3. INTEGER_ARRAY ar
#

def divisibleSumPairs(k, ar)
  # Write your code here
  count = 0
  combined_arr = ar.combination(2).to_a
  combined_arr.each do |pair|
    if (pair[0] + pair[1]) % k == 0
      count += 1
    end
  end
  return count

end
