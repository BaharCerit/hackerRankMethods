def gridChallenge(grid)
  n = grid.size

  m = grid[0].size

  grid.each { |row| row.chars.sort! }

  (0...m).each do |col|
      (1...n).each do |row|
        return "NO" if grid[row][col] < grid[row - 1][col]
      end
  end
  return "YES"
end
