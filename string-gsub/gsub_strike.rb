def strike(str)
  "<strike>#{str}</strike>"
end

def mask_article(text, arry)
  arry.each do |i|
      text.gsub!(i, strike(i))
  end
  text
end
