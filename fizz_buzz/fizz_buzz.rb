# Complete the 'fizzBuzz' function below.
#
# The function accepts INTEGER n as parameter.
#
FIZZNUMBER = 3
BUZZNUMBER = 5

def fizzBuzz(n)
  # Write your code here
  numbers = (1..n)
  numbers.each do |num|
      if num % FIZZNUMBER == 0 && num % BUZZNUMBER == 0
          puts "FizzBuzz"
      elsif num % FIZZNUMBER == 0
          puts "Fizz"
      elsif num % BUZZNUMBER == 0
          puts "Buzz"
      else
          puts "#{num}"
      end
  end
end
