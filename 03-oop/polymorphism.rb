=begin
  Examples of polymorphism in Ruby:
  - Method overriding
  - Using the same method name in different classes
  - Demonstrating dynamic behavior
=end

puts "\nP O L Y M O R P H I S M   W I T H   C L A S S E S\n"

class Animal
  def speak
    puts "The animal makes a sound."
  end
end

class Dog < Animal
  def speak
    puts "The dog barks."
  end
end

class Cat < Animal
  def speak
    puts "The cat meows."
  end
end

animals = [Dog.new, Cat.new, Animal.new]

animals.each do |animal|
  animal.speak
end

# output (example)
=begin
  P O L Y M O R P H I S M   W I T H   C L A S S E S
  The dog barks.
  The cat meows.
  The animal makes a sound.
=end