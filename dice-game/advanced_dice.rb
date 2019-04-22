puts "How many sides does your dice have?"
print "> "

sides = gets.chomp.to_i

puts "How many times would you like to roll your pair of dice?"
print "> "

rolls = gets.chomp.to_i
roll_again = "y"

while roll_again === "y" do
  rolls.times do
    die_1 = rand(sides) + 1
    die_2 = rand(sides) + 1

    puts "You rolled a #{die_1} and a #{die_2}.  Total: #{die_1 + die_2}"
  end

  print "Roll Again?  (y/n)> "
  roll_again = gets.chomp
end
