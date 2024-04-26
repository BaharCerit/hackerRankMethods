require_relative 'balanced_brackets'

puts isBalanced('{[()]}') == 'YES'
puts isBalanced('{[(])}') == 'NO'
puts isBalanced('{{[[(())]]}}') == 'YES'
