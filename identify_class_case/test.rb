require_relative "identify_class_case"

class Hacker
end

class Submission
end

class TestCase
end

class Contest
end

puts identify_class(10)
puts identify_class(Hacker.new)
puts identify_class(Submission.new)
puts identify_class(TestCase.new)
puts identify_class(Contest.new)
