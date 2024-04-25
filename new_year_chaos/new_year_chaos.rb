def minimumBribes(q)
  bribes = 0
  q.each_with_index do |person, index|
    original_position = person - 1
    if original_position - index > 2
      return "Too chaotic"
    end
    for j in [0, original_position - 1].max..index
        if q[j] > person
            bribes += 1
        end
    end
  end
  return bribes
end
