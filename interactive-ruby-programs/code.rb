supply_list = "Spaceship Supply List\n"
supply_list += "----------------\n"
input = ""

while input != "done" do
  print "Please enter a supply (or 'done'): "

  input = gets.chomp

  if input != "done"
    supply_list += "* #{input}\n"
  end
end

puts "\n\n"
puts supply_list


total_cost = 0.00

input = nil
while input != "done" do
  puts "\nThe current total is: $#{format("%.2f", total_cost)}"
  print "What is the cost of the item? (enter 'done' when finished)\n> "

  input = gets.chomp

  if input != "done"
    total_cost += input.to_f
  end
end

puts "\n\n"
puts "The total is: $#{format("%.2f", total_cost)}"
