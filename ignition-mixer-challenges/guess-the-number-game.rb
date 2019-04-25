puts "\nCreate a game that picks a random number between 1 and some max value (e.g. 1000).  The user should then be prompted to guess the number.  If the user guesses correctly, they win the game and the program ends.  If the guess is incorrect, respond with either 'Too high' or 'Too low' and prompt for input again."

min_value = 1
max_value = 1000
computer_choice = rand(min_value..max_value)
user_choice = nil

while user_choice != computer_choice
  print "Guess a number between #{min_value} and #{max_value}: "
  user_choice = gets.chomp.to_i

  if user_choice > computer_choice
    puts "Too high, try again."
  elsif user_choice < computer_choice
    puts "Too low, try again."
  else
    puts "Congratulations, you guessed the number!"
  end
end
