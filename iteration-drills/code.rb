#  Write Ruby<->English answers here as comments in your code

puts "1)"
puts "* numbers is an array"
puts "numbers.each do |number|"
puts "  puts 3 * number"
puts "end"
puts "\nFor every element called 'number' in the array 'numbers', print out 'number' multiplied by 3."



puts "\n2)"
puts "* names is an array"
puts "names.each do |name|"
puts "  puts name.length"
puts "end"
puts "\nFor every element called 'name' in the array 'names', print out 'name' length."

puts "\n3)"
puts "* numbers is an array"
puts "sum = 0"
puts "numbers.each do |number|"
puts "  sum += number"
puts "end"
puts "puts sum"
puts "\nAdd together every element called 'number' in the array 'numbers', print out the sum."

puts "\n4)"
puts "* hash is a hash"
puts "hash.each do |name, age|"
puts "  puts "#{name} is #{age} years old.""
puts "end"
puts "\nFor every key('name') value('age') pair in the hash 'hash', use string interpolation to print both the 'name' and 'age'."

puts "\n5)"
puts "* account is a hash"
puts "sum = 0"
puts "account.each do |transaction, value|"
puts "  sum += value"
puts "end"
puts "puts 'The value the account is \#{sum}'"
puts "\nAdd together every value called 'value' in the hash 'account', print out the sum using string interpolation."

puts "\n6)"
puts "* addresses is a hash"
puts "addresses.each do |name, address|"
puts "  puts '\#{name} lives on \#{address}'"
puts "end"
puts "\nFor every key('name') value('address') pair in the hash 'addresses', use string interpolation to print both the 'name' and 'age'."

puts "Write Ruby code to find out the answers to the following questions using the array below:"
puts "\narray = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]"
array = [28214, 63061, 49928, 98565, 31769, 42316, 23674, 3540, 34953, 70282, 22077, 94710, 50353, 17107, 73683, 33287, 44575, 83602, 33350, 46583]

puts "\n* What is the sum of all the numbers in `array`?"
puts "#{array.sum}"

puts "\n* How would you print out each value of the array?"
puts "#{array.join(", ")}"
puts "\nOR"
puts "\n"

array.each do |number|
  puts number
end

puts "\n* What is the sum of all of the even numbers?"

sum = 0

array.each do |number|
  if number % 2 === 0
    sum += number
  end
end

puts sum

puts "\n* What is the sum of all of the odd numbers?"

sum = 0

array.each do |number|
  if number % 2 === 1
    sum += number
  end
end

puts sum

puts "\n* What is the sum of all the numbers divisble by 5?"

sum = 0

array.each do |number|
  if number % 5 === 0
    sum += number
  end
end

puts sum

puts "\n* What is the sum of the squares of all the numbers in the array?"
puts "#{array.sum() {|number| number * number}}"

puts "\nWrite Ruby code using .each to build the described code. You can create your own data if you want to test it out in irb!"

puts "\n* For every element 'phone_number' in the array 'phone_numbers' print out the phone number if it is a MA area code."
puts "\n    ma_area_codes = [617, 508, 857]"
puts "    phone_numbers = [6175556789, 5088471234, 4132345678, 6174329876, 8575557777, 1235434545]"
puts "\n"

ma_area_codes = [617, 508, 857]
phone_numbers = [6175556789, 5088471234, 4132345678, 6174329876, 8575557777, 1235434545]

phone_numbers.each do |phone_number|
  if ma_area_codes.include?(phone_number.to_s[0..2].to_i)
    puts phone_number
  end
end

array = ["joanie", "annamarie", "muriel", "drew", "reva", "belle", "amari", "aida", "kaylie", "monserrate", "jovan", "elian", "stuart", "maximo", "dennis", "zakary", "louvenia", "lew", "crawford", "caitlyn"]

puts "\nWrite Ruby code to find out the answers to the following questions using the array provided:"
puts "\narray = ['joanie', 'annamarie', 'muriel', 'drew', 'reva', 'belle', 'amari', 'aida', 'kaylie', 'monserrate', 'jovan', 'elian', 'stuart', 'maximo', 'dennis', 'zakary', 'louvenia', 'lew', 'crawford', 'caitlyn']"

puts "\n* How would you print out each name backwards in `array`?"

array.each do |name|
  puts name.reverse
end

puts "\n* What are the total number of characters in the names in `array`?"

character_count = 0

array.each do |name|
  character_count += name.length
end

puts character_count

puts "\n* How many names in `array` are less than 5 characters long?"

short_names = 0

array.each do |name|
  if name.length < 5
    short_names += 1
  end
end

puts short_names

puts "\n* How many names in `array` end in a vowel?"

vowels = ['a', 'e', 'i', 'o', 'u']
ending_vowel_names = 0

array.each do |name|
  if vowels.include?(name[-1])
    ending_vowel_names += 1
  end
end

puts ending_vowel_names

puts "\n* How many names in `array` are more than 5 characters long?"

long_names = 0

array.each do |name|
  if name.length > 5
    long_names += 1
  end
end

puts long_names
puts "\n* How many names in `array` are exactly 5 characters in length?"

regular_names = 0

array.each do |name|
  if name.length === 5
    regular_names += 1
  end
end

puts regular_names
