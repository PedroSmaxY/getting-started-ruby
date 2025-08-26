# Example of boolean variables
is_student = true
is_smart = false

# Basic if-elsif-else conditional logic
if is_student and is_smart
  puts "You are a student"
elsif is_student and !is_smart
  puts "You are not a smart student"
elsif !is_student and is_smart
  puts "You are not a student but you are smart"
else
  puts "You are not a student not smart"
end

# Numeric comparison
if 1 > 3
  puts "number comparison was true"
end

# String comparison (lexicographical order)
if "a" > "b"
  puts "string comparison was true"
end

# Case statement (similar to switch in other languages)
my_grade = "a"
case my_grade.upcase
when "A"
  puts "You pass"
when "F"
  puts "You fail"
else
  puts "Invalid grade"
end

# output
=begin
  You are not a smart student
  You pass
=end