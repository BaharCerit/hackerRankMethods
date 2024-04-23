def flippingMatrix(matrix)
  # Write your code here
  q = matrix.length
  n = q / 2
  m = matrix

  quad_values = Array.new(n) { |r|
    Array.new(n) { |c|
    puts "r: #{r}, c: #{c}"
    puts "m[r][c]: #{m[r][c]}, m[r][q - 1 - c]: #{m[r][q - 1 - c]}, m[q - 1 - r][c]: #{m[q - 1 - r][c]}, m[q - 1 - r][q - 1 - c]: #{m[q - 1 - r][q - 1 - c]}"
      [m[r][c], m[r][q - 1 - c], m[q - 1 - r][c], m[q - 1 - r][q - 1 - c]].max
    }
  }

  return quad_values.flatten.sum
end

puts flippingMatrix([[112, 42, 83, 119], [56, 125, 56, 49], [15, 78, 101, 43], [62, 98, 114, 108]]) # 414
