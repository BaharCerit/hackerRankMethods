#
# Complete the 'staircase' function below.
#
# The function accepts INTEGER n as parameter.
#

def staircase(n)
  # Write your code here
  arr = (1..n)
  arr.each do |num|
     puts ' ' * (n - num) + '#' * num
  end

end
