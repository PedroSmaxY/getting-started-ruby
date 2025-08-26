=begin
  Examples of file input/output in Ruby:
  - Writing to a file
  - Reading from a file
  - Appending to a file
  - Reading lines from a file
=end

puts "\nW R I T I N G   T O   A   F I L E\n"
File.open("example.txt", "w") do |file|
  file.puts "Hello, Ruby!"
  file.puts "This is a file example."
end

puts "\nR E A D I N G   F R O M   A   F I L E\n"
content = File.read("example.txt")
puts content

puts "\nA P P E N D I N G   T O   A   F I L E\n"
File.open("example.txt", "a") do |file|
  file.puts "Appended line."
end

puts "\nR E A D I N G   L I N E S   F R O M   A   F I L E\n"
File.foreach("example.txt") do |line|
  puts line
end

# output
=begin
  W R I T I N G   T O   A   F I L E

  R E A D I N G   F R O M   A   F I L E
  Hello, Ruby!
  This is a file example.

  A P P E N D I N G   T O   A   F I L E

  R E A D I N G   L I N E S   F R O M   A   F I L E
  Hello, Ruby!
  This is a file example.
  Appended line.
=end