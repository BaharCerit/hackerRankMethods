combination = -> (n) do
  -> (r) do
      factorial(n) / (factorial(r) * factorial(n - r))
  end
end

def factorial(x)
  result = 1
  (1..x).each do |i|
    result *= i
  end
  result
end
n = gets.to_i
r = gets.to_i
nCr = combination.(n)
puts nCr.(r)

