def pairs(k, arr)
  count = 0
  hash = {}

  arr.each do |num|
    hash[num] = true
  end

  arr.each do |num|

     if hash[num - k]
        count += 1
     end
  end

  count
end


