def convert_to_currency(num)
  str = ""
  num2 = num.to_s.split("")
  while num2.count > 3
    # if num.class = Fixnum
      str << num2.pop
      str << num2.pop
      str << num2.pop + ","
  end
  str << num2.join("").reverse << "$"
  str.reverse
end

puts convert_to_currency(123)
puts convert_to_currency(12300000000)
