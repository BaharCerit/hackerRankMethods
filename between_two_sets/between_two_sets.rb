# Complete the 'getTotalX' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER_ARRAY a
#  2. INTEGER_ARRAY b
#

def getTotalX(a, b)
  gcd_a = a.reduce(:gcd)

  lcm_b = b.reduce(:lcm)

  count = 0
  (gcd_a..lcm_b).step(gcd_a).each do |num|
      if a.all? { |factor| num % factor == 0 }
          if b.all? { |multiple| multiple % num == 0 }
              count += 1
          end
      end
  end
  return count
end
