=begin
  Examples of classes in Ruby:
  - Defining a class
  - Initializing objects
  - Instance variables
  - Instance methods
  - Creating and using objects
=end

puts "\nC L A S S   D E F I N I T I O N\n"
class Student
  # Constructor method
  def initialize(name, age)
    @name = name          # Instance variable
    @age = age
  end

  # Instance method
  def introduce
    puts "Hi, my name is #{@name} and I am #{@age} years old."
  end
end

puts "\nC R E A T I N G   O B J E C T S\n"
student1 = Student.new("Pedro", 21)
student2 = Student.new("Ana", 22)

puts "\nU S I N G   I N S T A N C E   M E T H O D S\n"
student1.introduce
student2.introduce

# output (example)
=begin
  C L A S S   D E F I N I T I O N

  C R E A T I N G   O B J E C T S

  U S I N G   I N S T A N C E   M E T H O D S
  Hi, my name is Pedro and I am 21 years old.
  Hi, my name is Ana and I am 22 years old.
=end