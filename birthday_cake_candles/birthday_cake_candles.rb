def max_height_candles(candles)
  max_height = candles.max
  return candles.count(max_height)
end
