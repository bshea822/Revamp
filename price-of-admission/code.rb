adults = 4
children = 2
adult_admission = 120.80
child_admission = 40.00
total_price = (adults * adult_admission) + (children * child_admission)

puts "----------------------------"
puts "Original Exercise"
puts "----------------------------"
puts "Your total price is:"
puts "$#{format('%.2f', total_price)}"
puts "\n\n"


adult_split_price = total_price / 4

puts "----------------------------"
puts "Bonus Exercise"
puts "----------------------------"
puts "The price per adult is:"
puts "$#{format('%.2f', adult_split_price)}"
puts "\n\n"
