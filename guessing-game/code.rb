puts "Welcome to the Guessing Game!  What difficulty would you like to play?"

difficulty = ""

unless difficulty === "easy" || difficulty === "hard"
  puts "Type 'easy' or 'hard':"
  print "> "

  difficulty = gets.chomp

  if difficulty != "easy" && difficulty != "hard"
    puts "Invalid difficulty setting..."
    puts "What difficulty would you like to play?"
  end
end

number = nil

if difficulty === "easy"
  number = rand(10) + 1
  puts "I've picked a number between 1 and 10.  Now guess it!"
else
  number = rand(20) +1
  puts "I've picked a number between 1 and 20.  Now guess it!"
end

input = nil
score = 0

while input != number do
  print "> "
  input = gets.chomp.to_i

  if input != number
    puts "Nope, try again!"
  else
    puts "You win!  Nice job!"
  end
  score += 1
end

puts "Your score was: #{score}"
