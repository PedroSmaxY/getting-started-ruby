=begin
  Examples of inheritance in Ruby:
  - Creating a superclass
  - Creating a subclass
  - Using inherited methods
  - Overriding methods
=end

puts "\nI N H E R I T A N C E   W I T H   C L A S S E S\n"

class Animal
  def initialize(name)
    @name = name
  end

  def speak
    puts "#{@name} makes a sound."
  end
end

class Dog < Animal
  def speak
    puts "#{@name} barks."
  end
end

class Cat < Animal
  # Inherits speak from Animal
end

dog = Dog.new("Rex")
cat = Cat.new("Mimi")

dog.speak      # Rex barks.
cat.speak      # Mimi makes a sound.

# output (example)
=begin
  I N H E R I T A N C E   W I T H   C L A S S E S
  Rex barks.
  Mimi makes a sound.
=end