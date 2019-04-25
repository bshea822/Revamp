long_string = "Lorem ipsum dolor sit amet consectetur adipisicing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua Ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur Excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum"

puts "Given a sentence, find the longest word:"
long_string_array = long_string.split
puts long_string_array.max_by { |word| word.length}

puts "\nGiven a sentence, find the most common letter used:"

letters_array = long_string.downcase.gsub(/\s+/, "").split(//)

letter_count = {}

letters_array.each do |letter|
  if letter_count.keys.include?(letter)
    letter_count[letter] += 1
  else
    letter_count[letter] = 1
  end
end

puts "The letter '#{letter_count.key(letter_count.values.max)}' is the most common letter with #{letter_count.values.max} times used."
