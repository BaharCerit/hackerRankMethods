def is_palindrome?(n)
  n.to_s == n.to_s.reverse
end

def is_prime?(n)
  return false if n < 2
  (2..Math.sqrt(n)).none? { |f| n % f == 0 }
end

def prime_palindrome(n)
  result = []
  num = 2
  until result.size == n
    result << num if is_prime?(num) && is_palindrome?(num)
    num += 1
  end
  result
end

n = gets.to_i
p prime_palindrome(n)


# other solution faster than the first one
# def is_palindrome?(n)
#   n.to_s == n.to_s.reverse
# end

# def is_prime?(n)
#   return false if n < 2
#   return true if n == 2 || n == 3
#   return false if n % 2 == 0 || n % 3 == 0

#   i = 5
#   w = 2

#   while i * i <= n
#     return false if n % i == 0
#     i += w
#     w = 6 - w
#   end

#   true
# end

# def prime_palindrome(n)
#   result = []
#   num = 2
#   until result.size == n
#     result << num if is_prime?(num) && is_palindrome?(num)
#     num += 1
#   end
#   result
# end

# n = gets.to_i
# puts prime_palindrome(n)
