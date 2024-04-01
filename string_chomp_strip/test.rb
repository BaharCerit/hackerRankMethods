require_relative 'process_text'

puts process_text(["Hi", "   \rthere!  "]) == "Hi there!"
puts process_text(["   Hello,", "   there! \n"]) == "Hello, there!"
puts process_text(["\tHi, \n", " Are you having fun?    "]) == "Hi, Are you having fun?"
