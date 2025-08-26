=begin
  Examples of exception handling in Ruby:
  - Using begin-rescue-end blocks
  - Handling specific exceptions
  - Using else and ensure
=end

puts "\nB E G I N   -   R E S C U E   -   E N D\n"
begin
  puts "Enter a number:"
  num = Integer(gets.chomp)
  puts "Your number is #{num}"
rescue ArgumentError
  puts "That's not a valid number!"
end

puts "\nH A N D L I N G   M U L T I P L E   E X C E P T I O N S\n"
begin
  arr = [1, 2, 3]
  puts arr.fetch(5)
rescue IndexError
  puts "Index out of bounds!"
rescue StandardError => e
  puts "Some other error: #{e.message}"
end

puts "\nE L S E   &   E N S U R E\n"
begin
  puts "Trying division..."
  result = 10 / 2
  puts "Result: #{result}"
rescue ZeroDivisionError
  puts "Cannot divide by zero!"
else
  puts "No errors occurred."
ensure
  puts "This always runs."
end

# output (example)
=begin
  B E G I N   -   R E S C U E   -   E N D
  Enter a number:
  a
  That's not a valid number!

  H A N D L I N G   M U L T I P L E   E X C E P T I O N S
  Index out of bounds!

  E L S E   &   E N S U R E
  Trying division...
  Result: 5
  No errors occurred.
  This always runs.
=end