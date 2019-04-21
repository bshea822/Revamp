knife_juggling = 2.10 + 0.77 + 5.00 + 1.00 + 3.00
torch_juggling = 6.00 + 3.50 + 7.00
hand_balancing = 2.00 + 1.00
human_blockhead = 0.75 + 0.43
total_income = knife_juggling + torch_juggling + hand_balancing + human_blockhead
average_tip = total_income / 12
puts "--------------------"
puts "Part One"
puts "--------------------"
puts "Knife Juggling:"
puts "$#{format("%.2f", knife_juggling)}"
puts "Torch Juggling:"
puts "$#{format("%.2f", torch_juggling)}"
puts "Hand Balancing:"
puts "$#{format("%.2f", hand_balancing)}"
puts "Human Blockhead:"
puts "$#{format("%.2f", human_blockhead)}"
puts "Total Income:"
puts "$#{format("%.2f", total_income)}"
puts "Average Tip:"
puts "$#{average_tip.round(2)}\n\n"


puts "--------------------"
puts "Part Two"
puts "--------------------"
puts "Hello everybody!  Today, I will be showing you acts of great daring.  Can I have an audience volunteer?"
puts "There's our brave volunteer!  What's your name?"

audience_volunteer = gets.chomp

puts "Everyone give a big round of applause for #{audience_volunteer}!"
puts "Now #{audience_volunteer}, what's your favorite number?"

favorite_number = gets.chomp

puts "Alright #{audience_volunteer}, my friend and I will be juggling these knives around you for #{favorite_number} seconds.  Are you prepared to be amazed?"
