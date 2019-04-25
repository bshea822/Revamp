people = [
  {first_name: "Jon", last_name: "Smith", age: 25, income: 50000, household_size: 1, gender: "Male", education: "College"},
  {first_name: "Jane", last_name: "Davies", age: 30, income: 60000, household_size: 3, gender: "Female", education: "High School"},
  {first_name: "Sam", last_name: "Farelly", age: 32, income: 80000, household_size: 2, gender: "Unspecified", education: "College"},
  {first_name: "Joan", last_name: "Favreau", age: 35, income: 65000, household_size: 4, gender: "Female", education: "College"},
  {first_name: "Sam", last_name: "McNulty", age: 38, income: 63000, household_size: 3, gender: "Male", education: "College"},
  {first_name: "Mark", last_name: "Minahan", age: 48, income: 78000, household_size: 5, gender: "Male", education: "High School"},
  {first_name: "Susan", last_name: "Umani", age: 45, income: 75000, household_size: 2, gender: "Female", education: "College"},
  {first_name: "Bill", last_name: "Perault", age: 24, income: 45000, household_size: 1, gender: "Male", education: "Did Not Complete High School"},
  {first_name: "Doug", last_name: "Stamper", age: 45, income: 75000, household_size: 1, gender: "Male", education: "College"},
  {first_name: "Francis", last_name: "Underwood", age: 52, income: 100000, household_size: 2, gender: "Male", education: "College"}
]

total_age = 0
total_income = 0
total_household_size = 0
total_male = 0
total_female = 0
total_unspecified = 0
total_college = 0
total_high_school = 0
total_did_not_complete_hs = 0

people.each do |person|
  total_age += person[:age]
  total_income += person[:income]
  total_household_size += person[:household_size]

  if person[:gender] === "Male"
    total_male += 1
  elsif person[:gender] === "Female"
    total_female += 1
  else
    total_unspecified += 1
  end

  if person[:education] === "College"
    total_college += 1
  elsif person[:education] === "High School"
    total_high_school += 1
  else
    total_did_not_complete_hs += 1
  end
end

puts "Average Age: #{format("%.2f", (total_age.to_f / people.length))}"
puts "Average Income: $#{format("%.2f", (total_income.to_f / people.length))}"
puts "Average Household Size: #{format("%.2f", total_household_size.to_f / people.length)}"
puts "Female %: #{format("%.2f", (total_female.to_f / people.length) * 100)}"
puts "Male %: #{format("%.2f", (total_male.to_f / people.length) * 100)}"
puts "Unspecified Gender %: #{format("%.2f", (total_unspecified.to_f / people.length) * 100)}"
puts "College %: #{format("%.2f", (total_college.to_f / people.length) * 100)}"
puts "High School %: #{format("%.2f", (total_high_school.to_f / people.length) * 100)}"
puts "Did Not Finish High School %: #{format("%.2f", (total_did_not_complete_hs.to_f / people.length) * 100)}"
