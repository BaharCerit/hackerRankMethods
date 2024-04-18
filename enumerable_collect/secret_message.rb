def decode_char(char)
  case char
    when 'a'..'m', 'A'..'M'
      char.ord + 13
    when 'n'..'z', 'N'..'Z'
      char.ord - 13
    else
      char.ord
  end.chr
end

def decode_word(word)
  word.chars.map do |char|
    decode_char(char)
  end.join
end

def rot13(messages)
  messages.map do |message|
    decode_word(message)
  end
end
