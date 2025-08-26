=begin
  Examples of modules and mixins in Ruby:
  - Defining a module
  - Including a module in a class (mixin)
  - Using module methods
=end

puts "\nM O D U L E   D E F I N I T I O N\n"
module Greetings
  def say_hello
    puts "Hello!"
  end

  def say_goodbye
    puts "Goodbye!"
  end
end

puts "\nI N C L U D I N G   M O D U L E   ( M I X I N )\n"
class Person
  include Greetings   # Mixin: adds module methods as instance methods

  def initialize(name)
    @name = name
  end

  def introduce
    puts "My name is #{@name}."
  end
end

person = Person.new("Pedro")
person.introduce
person.say_hello
person.say_goodbye

puts "\nU S I N G   M O D U L E   M E T H O D S   D I R E C T L Y\n"
module MathHelpers
  def self.square(x)
    x * x
  end
end

puts MathHelpers.square(5)

# output (example)
=begin
  M O D U L E   D E F I N I T I O N

  I N C L U D I N G   M O D U L E   ( M I X I N )
  My name is Pedro.
  Hello!
  Goodbye!

  U S I N G   M O D U L E   M E T H O D S   D I R E C T L Y
  25
=end