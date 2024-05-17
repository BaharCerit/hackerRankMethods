def migratoryBirds(arr)
  # Write your code here
  bird_counts = Hash.new(0)

  arr.each do |bird_type|
      bird_counts[bird_type] += 1
  end

  max_count = bird_counts.values.max
  most_frequent_birds = bird_counts.select { |bird, count| count == max_count }.keys

  return most_frequent_birds.min
end
