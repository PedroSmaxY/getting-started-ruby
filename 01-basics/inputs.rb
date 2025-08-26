=begin
  Examples of user input in Ruby:
  - Getting input from the user
  - Converting input to numbers
  - Simple interaction
=end

puts "\nU S E R   I N P U T\n"
print "What is your name? "
name = gets.chomp              # Gets input and removes newline
puts "Hello, #{name}!"

puts "\nN U M E R I C   I N P U T\n"
print "Enter your age: "
age = gets.chomp.to_i          # Converts input to integer
puts "You are #{age} years old."

print "Enter your GPA: "
gpa = gets.chomp.to_f          # Converts input to float
puts "Your GPA is #{gpa}."

# output (example)
=begin
  U S E R   I N P U T
  What is your name? Pedro Henrique
  Hello, Pedro Henrique!

  N U M E R I C   I N P U T
  Enter your age: 21
  You are 21 years old.
  Enter your GPA: 4.0
  Your GPA is 4.0.
=end