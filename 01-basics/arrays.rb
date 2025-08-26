=begin
  Examples of arrays in Ruby:
  - Creating and accessing elements
  - Slicing and ranges
  - N-dimensional arrays
  - Common array methods
  - Removing elements
  - Iterating over arrays
  - Concatenation and transformation
=end

puts "\nA R R A Y   C R E A T I O N   &   I N D E X I N G\n"
lucky_numbers = [4, 8, "fifteen", 16, 23, 42.0]
# Indexes:       0  1      2       3   4   5

lucky_numbers[0] = 90         # Change value at index 0
puts lucky_numbers[0]         # Access first element
puts lucky_numbers[1]         # Access second element
puts lucky_numbers[-1]        # Access last element

puts "\nS L I C E S   &   R A N G E S\n"
puts lucky_numbers[2, 3]      # Slice: from index 2, take 3 elements
puts "\n"
puts lucky_numbers[2..4]      # Range: from index 2 to 4
puts "\n"
puts lucky_numbers.length     # Array length

puts "\nD I M E N S I O N A L   A R R A Y S\n"
number_grid = [
  [1, 2],
  [3, 4]
]
puts number_grid[0][0]        # Access row 0, column 0
puts number_grid[0][1]        # Access row 0, column 1

puts "\nA R R A Y   M E T H O D S\n"
friends = []
friends.push("Oscar")         # Add element to array
friends.push "Angela"
friends.push "Kevin"
friends << "Ana"              # Shorthand for push

puts friends
puts "\n"
puts friends.reverse          # Reverse array
puts "\n"
puts friends.sort             # Sort array
puts "\n"
puts friends.include? "Oscar" # Check if array includes element

puts "\nR E M O V I N G   E L E M E N T S\n"
friends.pop                   # Remove last element
puts friends
friends.shift                 # Remove first element
puts friends
friends.delete("Angela")      # Remove by value
puts friends
friends.delete_at(0)          # Remove by index
puts friends

puts "\nI T E R A T I N G   O V E R   A R R A Y S\n"
friends = ["Oscar", "Angela", "Kevin", "Ana"]
friends.each do |friend|
  puts "Hello, #{friend}!"
end

puts "\nC O N C A T E N A T I O N\n"
more_friends = ["Pam", "Jim"]
all_friends = friends + more_friends
puts all_friends

puts "\nT R A N S F O R M A T I O N\n"
numbers = [1, 2, 3]
doubled = numbers.map { |n| n * 2 }
puts doubled

# output
=begin
  A R R A Y   C R E A T I O N   &   I N D E X I N G
  90
  8
  42.0

  S L I C E S   &   R A N G E S
  fifteen
  16
  23

  fifteen
  16
  23

  6

  D I M E N S I O N A L   A R R A Y S
  1
  2

  A R R A Y   M E T H O D S
  Oscar
  Angela
  Kevin
  Ana

  Ana
  Kevin
  Angela
  Oscar

  Ana
  Angela
  Kevin
  Oscar

  true

  R E M O V I N G   E L E M E N T S
  Oscar
  Angela
  Kevin
  Angela
  Kevin
  Kevin

  I T E R A T I N G   O V E R   A R R A Y S
  Hello, Oscar!
  Hello, Angela!
  Hello, Kevin!
  Hello, Ana!

  C O N C A T E N A T I O N
  Oscar
  Angela
  Kevin
  Ana
  Pam
  Jim

  T R A N S F O R M A T I O N
  2
  4
  6
=end