def find_zig_zag_sequence(a, n)
  a.sort!
  mid = n / 2
  a[mid], a[-1] = a[-1], a[mid]
  st = mid + 1
  en = n - 2
  while st <= en
    a[st], a[en] = a[en], a[st]
    st += 1
    en -= 1
  end
  return a.join(" ")
end
