=begin
  Variable names are case-sensitive and must start with a letter or underscore (_).
  After the first character, they can include letters, numbers, or underscores.
  
  By convention, variable names use snake_case:
    Start with a lowercase word, then separate additional words with underscores (_).
    Example: my_first_variable
=end

name = "Pedro"    # String
age = 21          # Integer
gpa = 3.7         # Float
is_tall = true    # Boolean (true/false)

puts "Your name is #{name}"

name = "Ana"

puts "Your name is " + name

# Output:
=begin
  Your name is Pedro
  Your name is Ana
=end
