def process_text(array)
  my_arry = array.map do |x|
      x.strip.chomp
  end
  return my_arry.join(' ')
end
