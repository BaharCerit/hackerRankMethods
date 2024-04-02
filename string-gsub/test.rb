require_relative 'gsub_strike'

puts mask_article('Hello World! This is crap!', ['crap']) == "Hello World! This is <strike>crap</strike>!"
puts mask_article('Hi there! This is Bahar', ['there', 'is']) == "Hi <strike>there</strike>! Th<strike>is</strike> <strike>is</strike> Bahar"
