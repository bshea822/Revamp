require 'pry'

puts "Greeting shopper!  What is your name?"
print "> "

name = gets.chomp

inventory = ["old paperback book", "potato", "red onion", "dried lemon", "frankincense", "moon dust", "saffron", "glass spice jar", "red fabric", "orange fabric", "handicrafts", "small Persian rug", "used medium space suit", "heffalump shag rug", "woozle hide purse"]

puts "\nHello #{name}!  Please feel free to browse the items in our inventory."
puts "\n----------------"
puts "Inventory"
puts "----------------"

inventory.each { |item| puts "* #{item}"}

input = ""
shopping_cart = []
wish_list = []

puts "\nEnter an item to add it to your shopping cart.  If there is an item that is not in stock, you can enter the name of the item and we will keep an eye out for it. Enter 'done' when you are finished shopping."

while input != "done" do
  print "> "

  input = gets.chomp

  if input != "done" && inventory.include?(input)
    shopping_cart << input
  elsif input != "done"
    wish_list << input
  end
end

puts "#{name}, thanks for trying our online Souq platform.  Here is a list of the items in your cart!:"
puts "\n"

shopping_cart.each { |item| puts "* #{item}" }

puts "\nBtw, we noticed you tried entering in some items that aren't part of the online Souq.  We don't have the following items yet but will let you know if they show up!:"
puts "\n"

wish_list.each { |item| puts "* #{item}" }
