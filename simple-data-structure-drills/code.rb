transactions = [50_000, -2_000, -25_000, 4_000, -12_000, 5_000, -800, -900, 43_000, -30_000, 15_000, 62_000, -50_000, 42_000]

# Write Ruby code to find out the answers to the following questions. Be sure to make sure that your output and format matches what is given on the assignment page:

# * What is the value of the first transaction?
puts "The first transaction is:"
puts transactions.first

# * What is the value of the second transaction?
puts "\nThe second transaction is:"
puts transactions[1]
# * What is the value of the fourth transaction?
puts "\nThe fourth transaction is:"
puts transactions[3]
# * What is the value of the last transaction?
puts "\nThe last transaction is:"
puts transactions.last
# * What is the value of the second from last transaction?
puts "\nThe second from the last transaction is:"
puts transactions[-2]
# * What is the value of the 5th from last transaction?
puts "\nThe fifth from the last transaction is:"
puts transactions[-5]
# * What is the value of the transaction with index 5?
puts "\nThe transaction with the index of 5 is:"
puts transactions[5]
# * How many transactions are there in total?
puts "\nThe total number of transactions is:"
puts transactions.length
# * How many positive transactions are there in total?
puts "\nThe total number of positive transactions is:"

positive_transactions = transactions.select { |number| number.positive? }

puts positive_transactions.length
# * How many negative transactions are there in total?
puts "\nThe total number of negative transactions is:"
negative_transactions = transactions.select { |number| number.negative? }

puts negative_transactions.length
# * What is the largest withdrawal?
puts "\nThe largest withdrawal is:"
puts transactions.min
# * What is the largest deposit?
puts "\nThe largest deposit is:"
puts transactions.max
# * What is the smallest withdrawal?
puts "\nThe smallest withdrawal is:"

negative_transactions = transactions.select { |number| number.negative? }

puts negative_transactions.max
# * What is the smallest deposit?
puts "\nThe smallest deposit is:"

positive_transactions = transactions.select { |number| number.positive? }

puts positive_transactions.min
# * What is the total value of all the transactions?
puts "\nThe total value of all the transactions is:"
puts transactions.sum
# * If Dr. Dre's initial balance was $239,900 in this account, what is the value of his balance after his all of the transactions in our transactions array have been run?
puts "\nDr. Dre's balance is:"
puts transactions.sum + 239900

best_records = {
 "Tupac"=>"All Eyez on Me",
 "Eminem"=>"The Marshall Mathers LP",
 "Wu-Tang Clan"=>"Enter the Wu-Tang (36 Chambers)",
 "Led Zeppelin"=>"Physical Graffiti",
 "Metallica"=>"The Black Album",
 "Pink Floyd"=>"The Dark Side of the Moon",
 "Pearl Jam"=>"Ten",
 "Nirvana"=>"Nevermind"
 }

# Write Ruby code to find out the answers to the following questions:

# * How many records are in `best_records`?
puts "\nTotal records:"
puts best_records.length
# * Who are all the artists listed?
puts "\nAll of the artists:"
puts best_records.keys.join(", ")

# * What are all the album names in the hash?
puts "\nAll of the albums:"
puts best_records.values.join(", ")
# * Delete the `Eminem` key-value pair from the list and print an updated list of just the artists.
puts "\nList of artists with Eminem deleted:"

best_records.delete("Eminem")

best_records.keys.each do |artist|
  puts artist
end

# * Add your favorite musician and their best album to the list and print an updated list of all the artists and albums:
puts "\nMy favorite musician added:"

best_records["Reel Big Fish"] = "Turn the Radio Off"

best_records.each do |artist, album|
  puts "#{artist} - #{album}"
end

# * True or False: `Nirvana` is included in `best_records`
puts "\nTrue or False: `Nirvana` is included:"
puts best_records.keys.include?("Nirvana")

# * Change `Nirvana`'s album to another and then print the updated list of Artists and Albums.
puts "\nNirvana's album updated:"

best_records["Nirvana"] = "Bleach"

best_records.each do |artist, album|
  puts "#{artist} - #{album}"
end
# * True or False: `Soundgarden` is included in `best_records`?
puts "\nTrue or False: `Soundgarden` is included:"
puts best_records.keys.include?("Soundgarden")
# * If `Soundgarden` is not in `best_records` then add a key-value pair for the band and then print the updated list of Artists and Albums.
puts "\nSoundgarden added if it's not already there:"

best_records["Soundgarden"] = "Superunknown"

best_records.each do |artist, album|
  puts "#{artist} - #{album}"
end
# * Which key-value pairs have a key that has a length less than or equal to 6 characters?
puts "\nkey-value pairs have a key that has a length less than or equal to 6 characters:"

best_records.each do |artist, album|
  if artist.length <= 6
    puts "#{artist} - #{album}"
  end
end
# * Which key-value pairs have a value that is greater than 10 characters?
puts "\nkey-value pairs have a key that has a length greater than 10 characters:"

best_records.each do |artist, album|
  if artist.length > 10
    puts "#{artist} - #{album}"
  end
end
