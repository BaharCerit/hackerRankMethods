# Complete the 'breakingRecords' function below.
#
# The function is expected to return an INTEGER_ARRAY.
# The function accepts INTEGER_ARRAY scores as parameter.
#

def breakingRecords(scores)
  max_score = scores[0]
  min_score = scores[0]

  max_break_count = 0
  min_break_count = 0

  scores.each do |score|
      if score > max_score
          max_score = score
          max_break_count += 1
      end

      if score < min_score
          min_score = score
          min_break_count += 1
      end
  end

  return [max_break_count, min_break_count]
end
