require 'pry'

dramas = [
  "Stanger Llamas",
  "Game of Bones",
  "Llama Actually",
  "Grey's Catanomy",
  "Breaking Baaaaahhhd"
]

animations = [
  "Bojack Man",
  "Family Dog",
  "Futurellama",
  "Barkcher",
  "American Dog",
  "Pokemon",
  "Bob's Barkers"
]

comedies = [
  "Barks and Recreation",
  "30 Cats",
  "Bones",
  "Girl meets Cat",
  "Gilmore Cats",
  "New Dog",
  "Catlandia",
  "Full Mouse"
]

all_shows = [
  "Stanger Llamas",
  "Game of Bones",
  "Llama Actually",
  "Grey's Catanomy",
  "Breaking Baaaaahhhd",
  "Bojack Man",
  "Family Dog",
  "Futurellama",
  "Barkcher",
  "American Dog",
  "Pokemon",
  "Bob's Barkers",
  "Barks and Recreation",
  "30 Cats",
  "Bones",
  "Girl meets Cat",
  "Gilmore Cats",
  "New Dog",
  "Catlandia",
  "Full Mouse"
]

llama_shows = dramas.select { |show| show.include?("Llama")}

puts "Llama Dramas"
puts "---------------"
puts llama_shows

dog_shows = animations.select { |show| show.include?("Dog")}

puts "\nDog Animations"
puts "---------------"
puts dog_shows

no_cats = comedies.reject { |show| show.include?("Cat")}

puts "\nComedies Without Cats"
puts "---------------"
puts no_cats

first_letters = all_shows.map { |show| show[0]}

puts "\nFirst Letters"
puts "---------------"
puts first_letters.sort
