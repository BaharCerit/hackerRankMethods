def isBalanced(s)
  stack = []
  s.each_char do |c|
      case c
      when "{", "(", "["
          stack.push(c)
      when "}"
          return "NO" unless stack.pop == "{"
      when ")"
          return "NO" unless stack.pop == "("
      when "]"
          return "NO" unless stack.pop == "["
      end
  end
  stack.empty? ? "YES" : "NO"
end
