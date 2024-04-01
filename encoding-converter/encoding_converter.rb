def transcode(str)
  return str.encode("iso-8859-1").force_encoding("utf-8")
end
