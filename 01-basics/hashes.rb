=begin
  Examples of hashes (dictionaries) in Ruby:
  - Creating and accessing elements
  - Adding, updating, and removing keys
  - Iterating over hashes
  - Common hash methods
=end

puts "\nH A S H   C R E A T I O N   &   A C C E S S\n"
my_hash = {
  "name" => "Pedro",
  "age" => 21,
  "is_tall" => true
}
puts my_hash["name"]      # Access value by key
puts my_hash["age"]
puts my_hash["is_tall"]

puts "\nS Y M B O L   K E Y S\n"
person = {
  name: "Ana",
  age: 22,
  is_tall: false
}
puts person[:name]
puts person[:age]
puts person[:is_tall]

puts "\nA D D I N G   &   U P D A T I N G   K E Y S\n"
person[:city] = "Lisbon"      # Add new key
person[:age] = 23             # Update value
puts person

puts "\nR E M O V I N G   K E Y S\n"
person.delete(:is_tall)       # Remove key
puts person

puts "\nI T E R A T I N G   O V E R   H A S H\n"
person.each do |key, value|
  puts "#{key}: #{value}"
end

puts "\nH A S H   M E T H O D S\n"
puts person.keys              # Get all keys
puts person.values            # Get all values
puts person.has_key?(:name)   # Check if key exists
puts person.has_value?("Ana") # Check if value exists

# output
=begin
  H A S H   C R E A T I O N   &   A C C E S S
  Pedro
  21
  true

  S Y M B O L   K E Y S
  Ana
  22
  false

  A D D I N G   &   U P D A T I N G   K E Y S
  {name: "Ana", age: 23, is_tall: false, city: "Lisbon"}

  R E M O V I N G   K E Y S
  {name: "Ana", age: 23, city: "Lisbon"}

  I T E R A T I N G   O V E R   H A S H
  name: Ana
  age: 23
  city: Lisbon

  H A S H   M E T H O D S
  name
  age
  city
  Ana
  23
  Lisbon
  true
  true
=end