def compare_the_triplets(a, b)
  a_score = 0
  b_score = 0
  i = 0
  total = []
  a.each do |num|
      if num > b[i]
          a_score += 1
      elsif num < b[i]
          b_score += 1
      else
          a_score += 0
          b_score += 0
      end
      i += 1
  end
  total << a_score
  total << b_score
  return total

end
