def convert_to_currency(num)
  str = ""
  num2 = num.round(2).to_s.split("")

  str << num2.pop
  str << num2.pop
  str << num2.pop

  while num2.count > 3
      str << num2.pop
      str << num2.pop
      str << num2.pop + ","
  end
  str << num2.join("").reverse << "$"
  str.reverse
end

puts convert_to_currency(123)
puts convert_to_currency(12300000000)
puts convert_to_currency(122345231544.2124)
