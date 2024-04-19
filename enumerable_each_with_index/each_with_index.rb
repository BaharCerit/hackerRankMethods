def skip_animals(animals, skip)
  # Your code here
  animals.drop(skip).each_with_index.map { |animal, index|
    ("#{index + skip}:#{animal}")
  }
end
