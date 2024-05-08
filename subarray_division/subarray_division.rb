# Complete the 'birthday' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY s
#  2. INTEGER d
#  3. INTEGER m
#

def birthday(s, d, m)
  # Write your code here
  count = 0
  while s.size > m - 1
    if s.first(m).sum == d
      count += 1
      s.shift
    else
      s.shift
    end
  end
  return count
end
