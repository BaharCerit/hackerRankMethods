def palindromeIndex(s)
  return -1 if palindrome?(s)

  (0...s.length).each do |i|
    new_string = s[0...i] + s[i+1..-1]
    return i if palindrome?(new_string)
  end

  return -1
end

def palindrome?(s)
  s == s.reverse
end
