require 'pry'

width = 8
length = 20
snowfall = (8 / 12.to_f)
volume = (width * length * snowfall).round

puts "Cubic Feet: #{volume}"

if volume >= 0 && volume <= 49
  puts "Quote Price: $20"
elsif volume >= 50 && volume <= 149
  puts "Quote Price: $50"
elsif volume >= 150 && volume <= 299
  puts "Quote Price: $100"
elsif volume >= 300
  puts "Quote Price: $150"
end
