# Complete the 'superDigit' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. STRING n
#  2. INTEGER k
#

def superDigit(n, k)
  # Write your code here
  digit_sum = n.chars.map(&:to_i).sum
  digit_sum *= k
  while digit_sum >= 10
      digit_sum = digit_sum.digits.sum
  end
  return digit_sum
end
