input = ""

while input != "S" do
  die_1 = rand(6) + 1
  die_2 = rand(6) + 1

  puts "You rolled a #{die_1} and a #{die_2}"
  puts "Total: #{die_1 + die_2}"
  puts "Press 'Enter' to roll again, 'S' to stop"
  input = gets.chomp
end
