def gridChallenge(grid)
  matrix = Array.new(grid.size) { Array.new(grid[0].length, 0) }
  grid.each_with_index do |line, i|
    sort(line, matrix[i])
  end
  check(matrix) ? "YES" : "NO"
end

def sort(line, arr)
  alpha = Array.new(26, 0)
  line.each_char do |char|
    alpha[char.ord - 'a'.ord] += 1
  end

  (1...alpha.length).each do |i|
    alpha[i] += alpha[i - 1]
  end

  line.chars.reverse_each do |char|
    temp = char.ord - 'a'.ord
    arr[alpha[temp] -= 1] = temp
  end
end

def check(matrix)
  (0...matrix[0].length).each do |j|
    (1...matrix.length).each do |i|
      return false if matrix[i][j] < matrix[i - 1][j]
    end
  end
  true
end




#THIS IS FIRST SOLUTION
# def gridChallenge(grid)
#   n = grid.size

#   m = grid[0].size

#   grid.each { |row| row.chars.sort! }

#   (0...m).each do |col|
#       (1...n).each do |row|
#         return "NO" if grid[row][col] < grid[row - 1][col]
#       end
#   end
#   return "YES"
# end
