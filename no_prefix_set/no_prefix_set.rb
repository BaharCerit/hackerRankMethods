def noPrefix(words)
  root = {}

  words.each do |word|
    node = root
    word.each_char.with_index do |char, index|
      node[char] ||= {}
      node = node[char]

      if node[:end] || index == word.length - 1 && !node.empty?
        return ["BAD SET", word]
      end
    end
    node[:end] = true
  end

  return ["GOOD SET"]

end
