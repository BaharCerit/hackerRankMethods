def convert_temp(temp, input_scale:, output_scale: 'celsius')
  scales = { 'celsius' => { 'celsius' => temp, 'fahrenheit' => temp * 9/5.0 + 32, 'kelvin' => temp + 273.15 },
             'fahrenheit' => { 'celsius' => (temp - 32) * 5/9.0, 'fahrenheit' => temp, 'kelvin' => (temp + 459.67) * 5/9.0 },
             'kelvin' => { 'celsius' => temp - 273.15, 'fahrenheit' => temp * 9/5.0 - 459.67, 'kelvin' => temp } }
  scales[input_scale.downcase][output_scale.downcase]
end


def tempr(temp, inp:, out: 'celsius')
  if inp.downcase == 'celsius'
    if out.downcase == 'celsius'
      return temp
    elsif out.downcase == 'fahrenheit'
      return temp * 1.8 + 32
    elsif out.downcase == 'kelvin'
      return temp + 273.15
    else
      return "invalid output"
    end
  elsif inp.downcase == 'fahrenheit'
    if out.downcase == 'fahrenheit'
      return temp
    elsif out.downcase == 'celsius'
      return (temp - 32) / 1.8
    elsif out.downcase == 'kelvin'
      return (temp - 32) / 1.8 + 273.15
    else
      return "invalid output"
    end
  elsif inp.downcase == 'kelvin'
    if out.downcase == 'kelvin'
      return temp
    elsif out.downcase == 'celsius'
      return temp - 273.15
    elsif out.downcase == 'fahrenheit'
      return (temp - 273.15) * 1.8 + 32
    else
      return "invalid output"
    end
  end
end

