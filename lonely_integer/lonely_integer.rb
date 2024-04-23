#
# Complete the 'lonelyinteger' function below.
#
# The function is expected to return an INTEGER.
# The function accepts INTEGER_ARRAY a as parameter.
#

def lonelyinteger(a)
  # Write your code here
  counts = Hash.new(0)
  a.each { |num| counts[num] += 1 }
  counts.key(1)
end
