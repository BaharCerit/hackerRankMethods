def flippingMatrix(matrix)
  # Write your code here
  q = matrix.length
  n = q / 2
  m = matrix

  quad_values = Array.new(n) { |r|
    Array.new(n) { |c|
      [m[r][c], m[r][q - 1 - c], m[q - 1 - r][c], m[q - 1 - r][q - 1 - c]].max
    }
  }

  return quad_values.flatten.sum
end

