puts "\n* You're given a string of numbers 1 - 27."
puts "* 1 - 26 represents the correlating letter in the alphabet."
puts "* 27 represents a space."
puts "Decode the following message with Ruby: '7 15 15 4 27 4 15 7'"

alphabet = [
  'a',
  'b',
  'c',
  'd',
  'e',
  'f',
  'g',
  'h',
  'i',
  'j',
  'k',
  'l',
  'm',
  'n',
  'o',
  'p',
  'q',
  'r',
  's',
  't',
  'u',
  'v',
  'w',
  'x',
  'y',
  'z',
  ' '
]

message = "7 15 15 4 27 4 15 7"
message_array = message.split(' ')
final_message = ""

message_array.each do |num|
  final_message += alphabet[num.to_i - 1]
end

puts final_message
