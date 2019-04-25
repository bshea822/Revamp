require 'pry'
vote_results =
  {
    "Precinct 1" => {
      'Mary Sue' => 218,
      'Sally Jane' => 455,
      'Billy Joe' => 185
    },
    "Precinct 2" => {
      'Mary Sue' => 229,
      'Sally Jane' => 41,
      'Billy Joe' => 35
    },
    "Precinct 3" => {
      'Mary Sue' => 297,
      'Sally Jane' => 423,
      'Billy Joe' => 488
    },
    "Precinct 4" => {
    'Mary Sue' => 283,
    'Sally Jane' => 171,
    'Billy Joe' => 353
    }
  }

puts "1) Generate the voting totals by Precinct and Candidate as shown in the directions."

vote_results.each do |precinct, info|
  puts "**In #{precinct}**"
  info.each do |candidate, votes|
    puts "-#{candidate} got #{votes} votes"
  end
  puts "\n"
end
puts "\n2) How many people voted in each precinct? Create a new hash where the keys name the precinct and the values start at 0. Iterate over the provided `vote_results` to update the totals."

precinct_results = {
  "Precinct 1" => 0,
  "Precinct 2" => 0,
  "Precinct 3" => 0,
  "Precinct 4" => 0
}

vote_results.each do |precinct, info|
  vote_count = 0
  info.each_value do |votes|
    vote_count += votes
  end

  precinct_results[precinct] = vote_count
end

precinct_results.each do |precinct, votes|
  puts "#{precinct} had #{votes} votes."
end

puts "\n3) Which precinct had the highest voter turnout? Use the hash you created in Question 2 to return the answer."
puts "#{precinct_results.key(precinct_results.values.max)} had the most votes with #{precinct_results.values.max} votes."

puts "\n4) Output the total number of votes per candidate in the format seen above. Create a new hash where the keys name the candidate and the values start at 0. Iterate over the provided `vote_results` to update the totals."

candidate_results = {
  "Mary Sue" => 0,
  "Sally Jane" => 0,
  "Billy Joe" => 0
}

vote_results.each_value do |info|
  info.each do |candidate, votes|
    candidate_results[candidate] += votes
  end
end

candidate_results.each do |candidate, votes|
  puts "#{candidate} had #{votes} votes"
end

puts "\n5) Who was the winning candidate in Precinct 4 and how many votes did they get?"
puts "#{vote_results["Precinct 4"].key(vote_results["Precinct 4"].values.max)} won Precinct 4 with #{vote_results["Precinct 4"].values.max} votes"

puts "\n6) How many people voted in total?"
puts "In total, #{candidate_results.values.sum} people voted."

puts "\n7) Who won the election and how many votes did they get? Use the hash you created in Question 4 to return the answer."
puts "#{candidate_results.key(candidate_results.values.max)} had the most votes with #{candidate_results.values.max} votes."

puts "\n8) How many more votes did the winner have as compared to the third place candidate? Use the hash you created in Question 4 and the winning candidate total votes value from Question 7 to complete this question."
puts "#{candidate_results.key(candidate_results.values.max)} beat #{candidate_results.key(candidate_results.values.min)} by #{candidate_results.values.max - candidate_results.values.min}"
