puts "Hello, I'm the first and only Talking Vending Machine."
puts "What would you like today?"
print "> "

food = gets.chomp

puts "How many of those would you like?"
print "> "

amount = gets.chomp

if amount.index("tons")
  amount = rand(20) + 1
else
  amount = amount.to_i
end

amount.times do
  puts food
end

puts "There you go!  Come again!"
