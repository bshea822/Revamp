time_capsule = []
item_count = []

puts "Hello and thank you for using Shea's Time Capsules!  To get started, please enter your name:"
print "> "

user_name = gets.chomp

puts "Thank you #{user_name}, to add an item to the time capsule just enter the name of the item.  When you are done, type 'FINISHED' into the terminal."

item = ""
amount = ""

while item != "FINISHED" do
  print "> "
  item = gets.chomp

  if item != "FINISHED" && time_capsule.include?(item)
    print "Amount: "
    amount = gets.chomp.to_i
    item_index = time_capsule.index(item)
    item_count[item_index] += amount
  elsif item != "FINISHED"
    print "Amount: "
    amount = gets.chomp.to_i
    time_capsule << item
    item_count << amount
  end
end

puts "\nItems in your time capsule:"

time_capsule.each { |content| puts "* #{content} (#{item_count[time_capsule.index(content)]})" }
