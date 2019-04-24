REQUIRED_BAG_SIZE = 10

available_clubs = [
  :two_iron,
  :three_iron,
  :four_iron,
  :five_iron,
  :six_iron,
  :seven_iron,
  :eight_iron,
  :nine_iron,
  :pitching_wedge,
  :sand_wedge,
  :driver,
  :three_wood,
  :five_wood,
  :seven_wood,
  :putter
]

possible_club_selections = available_clubs.sample(REQUIRED_BAG_SIZE)
required_clubs = [
  :driver,
  :pitching_wedge,
  :putter
]

puts "***Automated Golf Club Advice:***"

possible_club_selections.each do |club|
  club_string = club.to_s
  puts "Use the #{club_string.gsub(/[_]/, ' ')}!"
end

puts ""

required_clubs.each do |club|
  club_string = club.to_s
  if !possible_club_selections.include?(club)
    puts "WARNING!  You will be without a #{club_string.gsub(/[_]/, ' ')}"
  end
end



# YOUR CODE GOES BELOW
