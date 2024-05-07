def kangaroo(x1, v1, x2, v2)
  i = 0
  while i < 10**4
      if x1 + i * v1 == x2 + i * v2
          return "YES"
      end
      i += 1
  end
  return "NO"
end
