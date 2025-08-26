=begin
  Examples of different loop structures in Ruby:
  while, for, times, and each.
=end

# While loop
puts "W H I L E  L O O P S\n"

index = 1
while index <= 5
  puts index
  index += 1
end

# For loop with range
puts "\nF O R  L O O P S\n"

for index in 0..5
  puts index
end

# Times loop
puts "\nT I M E S  L O O P S\n"

5.times do |index|
  puts index
end

# For loop with array
puts "\nA R R A Y  F O R  L O O P S\n"

lucky_numbers = [4, 8, 15, 16, 23, 42]
for lucky_number in lucky_numbers
  puts lucky_number
end

# Each loop with array
puts "\nE A C H  L O O P S\n"

lucky_numbers.each do |lucky_number|
  puts lucky_number
end

# output
=begin
  W H I L E  L O O P S
  1
  2
  3
  4
  5

  F O R  L O O P S
  0
  1
  2
  3
  4
  5

  T I M E S  L O O P S
  0
  1
  2
  3
  4

  A R R A Y  F O R  L O O P S
  4
  8
  15
  16
  23
  42

  E A C H  L O O P S
  4
  8
  15
  16
  23
  42
=end