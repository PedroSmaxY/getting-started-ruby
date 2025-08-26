=begin
  Examples of methods in Ruby:
  - Defining and calling methods
  - Methods with parameters
  - Default parameter values
  - Return values
  - Methods with multiple return values
=end

puts "\nD E F I N I N G   &   C A L L I N G   M E T H O D S\n"
def say_hello
  puts "Hello!"
end

say_hello

puts "\nM E T H O D S   W I T H   P A R A M E T E R S\n"
def greet(name)
  puts "Hello, #{name}!"
end

greet("Pedro")
greet("Ana")

puts "\nD E F A U L T   P A R A M E T E R S\n"
def greet_with_default(name = "friend")
  puts "Hello, #{name}!"
end

greet_with_default
greet_with_default("Carlos")

puts "\nR E T U R N   V A L U E S\n"
def add(a, b)
  return a + b
end

result = add(2, 3)
puts result

puts "\nM U L T I P L E   R E T U R N   V A L U E S\n"
def min_max(arr)
  return arr.min, arr.max
end

min, max = min_max([4, 8, 1, 5])
puts "Min: #{min}, Max: #{max}"

# output
=begin
  D E F I N I N G   &   C A L L I N G   M E T H O D S
  Hello!

  M E T H O D S   W I T H   P A R A M E T E R S
  Hello, Pedro!
  Hello, Ana!

  D E F A U L T   P A R A M E T E R S
  Hello, friend!
  Hello, Carlos!

  R E T U R N   V A L U E S
  5

  M U L T I P L E   R E T U R N   V A L U E S
  Min: 1, Max: 8
=end