def caeser_cipher_encrypted(s, k)
  k = k % 26
  alp_downcase = ("a".."z").to_a
  alp_upcase = ("A".."Z").to_a

  new_message = []
  s.each_char do |c|
      if ("a".."z").include?(c)
          new_message << alp_downcase[(alp_downcase.index(c) + k) % 26]
      elsif ("A".."Z").include?(c)
          new_message << alp_upcase[(alp_upcase.index(c) + k) % 26]
      else
          new_message << c
      end
  end
  return new_message.join("")
end
