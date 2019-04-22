require 'pry'

bottles = 99

while bottles >= 0 do
  if bottles > 1
    puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."

    bottles -= 1

    puts "Take one down and pass it around, #{bottles} bottles of beer on the wall."
    puts "\n"
  elsif bottles === 1
    puts "#{bottles} bottle of beer on the wall, #{bottles} bottle of beer."

    bottles -= 1

    puts "Take one down and pass it around, no more bottles of beer on the wall."
    puts "\n"
  elsif bottles === 0
    puts "No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall."

    bottles -= 1
  end
end
