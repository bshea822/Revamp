dinner_total = 178
tip = 20
tip_amount = dinner_total * (tip.to_f / 100)

puts "The total bill is $#{format("%.2f", dinner_total)}"
puts "You should tip $#{format("%.2f", tip_amount)}"
