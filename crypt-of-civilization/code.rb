crypt_of_civilization = []

crypt_of_civilization << "Comptometer"
crypt_of_civilization << "Box of phonographic records"
crypt_of_civilization << "Plastic savings bank"
crypt_of_civilization << "Set of scales"
crypt_of_civilization << "Toast-O-Lator"
crypt_of_civilization << "Sample of aluminum foil"
crypt_of_civilization << "Donald Duck doll"

extra = ["Container of soda", "Lionel model train set", "Ingraham pocket watch"]

crypt_of_civilization += extra

puts "How many items are in the array?"
puts crypt_of_civilization.length

puts "\nWhat is the first item in the array?"
puts crypt_of_civilization.first

puts "\nWhat is the last item in the array?"
puts crypt_of_civilization.last

puts "\nWhat is the second item in the array?"
puts crypt_of_civilization[1]

puts "\nWhat is the third item in the array?"
puts crypt_of_civilization[2]

puts "\nWhat is the second from last item in the array?"
puts crypt_of_civilization[-2]

puts "\nWhat is the index of 'Toast-O-Lator'?"
puts crypt_of_civilization.index("Toast-O-Lator")

puts "\nDoes the array contain 'Container of soda'?"
puts crypt_of_civilization.include?("Container of soda")

puts "\nDoes the array contain 'Toast-O-Lator'?"
puts crypt_of_civilization.include?("Toast-O-Lator")

puts "\nDoes the array contain 'Plastic bird'?"
puts crypt_of_civilization.include?("Plastic bird")

puts "\nCrypt of Civilization sorted by word length:"
puts crypt_of_civilization.sort_by { |word| word.length }

puts "\nCrypt of Civilization sorted in alphabetical order:"
puts crypt_of_civilization.sort

puts "\nCrypt of Civilization sorted in reverse alphabetical order:"
puts crypt_of_civilization.sort { |first_string, second_string| second_string <=> first_string }

puts "\nOpen capsule with a 'while loop':"
index = 0
while index < crypt_of_civilization.length do
  puts crypt_of_civilization[index]
  index += 1
end

puts "\nOpen capsule with an 'each loop':"
crypt_of_civilization.each { |item| puts item}

puts "\nRemove the first item from the Crypt of Civilization:"

crypt_of_civilization.shift

puts crypt_of_civilization

puts "\nRemove the last item from the Crypt of Civilization:"

crypt_of_civilization.pop

puts crypt_of_civilization

puts "\nRemove 'Set of scales' from the Crypt of Civilization:"

crypt_of_civilization.delete("Set of scales")

puts crypt_of_civilization

puts "\nRemove 'Sample of aluminum foil' from the Crypt of Civilization:"

crypt_of_civilization.delete("Sample of aluminum foil")

puts crypt_of_civilization
