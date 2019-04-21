require 'pry'

random_number = rand(3) + 1
computer_choice = nil

if random_number === 1
  computer_choice = "r"
elsif random_number === 2
  computer_choice = "p"
elsif random_number === 3
  computer_choice = "s"
end

print "Choose rock (r), paper (p), or scissors (s): "

player_choice = gets.chomp

if player_choice != "" && (player_choice === "r" || player_choice === "p" || player_choice === "s")
  if player_choice === "r"
    puts "Player chose rock."
    if computer_choice === "r"
      puts "Computer chose rock."
      puts "It's a tie!"
    elsif computer_choice === "p"
      puts "Computer chose paper."
      puts "Paper beats rock, Computer wins!"
    elsif computer_choice === "s"
      puts "Computer chose scissors."
      puts "Rock beats scissors, Player wins!"
    end
  elsif player_choice === "p"
    puts "Player chose paper."
    if computer_choice === "r"
      puts "Computer chose rock."
      puts "Paper beats rock, Player wins!"
    elsif computer_choice === "p"
      puts "Computer chose paper."
      puts "It's a tie!"
    elsif computer_choice === "s"
      puts "Computer chose scissors."
      puts "Scissors beats paper, Computer wins!"
    end
  elsif player_choice === "s"
    puts "Player chose scissors."
    if computer_choice === "r"
      puts "Computer chose rock."
      puts "Rock beats scissors, Computer wins!"
    elsif computer_choice === "p"
      puts "Computer chose paper."
      puts "Scissors beats paper, Player wins!"
    elsif computer_choice === "s"
      puts "Computer chose scissors."
      puts "It's a tie!"
    end
  end
else
  puts "Invalid input...please play again"
end
