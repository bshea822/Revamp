items_we_have = "chips popcorn skittles granola mentos gum cheetos m&ms"

puts "What item would you like?"

input = gets.chomp
index = items_we_have.index(input)

if input === ""
  puts "Please enter a value"
elsif input && index
  puts "Item Index:"
  puts items_we_have.index(input)
elsif input && !index
  puts "We do not have that item in selection"
end
