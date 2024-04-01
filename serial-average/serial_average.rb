# str = "SSS-XX.XX-YY.YY" # Remove the assignment since the variable is not being used
def serial_average (str)
  first_group = str[0,3]
  average_zz =((str[4,5].to_f + str[10,5].to_f) / 2 ).round(2)
  return "#{first_group}-#{average_zz}"
end
