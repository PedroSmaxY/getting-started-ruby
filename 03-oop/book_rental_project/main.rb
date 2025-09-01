require_relative 'lib/book'
require_relative 'lib/user'
require_relative 'lib/book_checkout'
require 'colorize'

def clear_screen
  system('clear') || system('cls')
end

def print_header
  puts "\n#{"=" * 50}".yellow
  puts "#{" " * 15}LIBRARY SYSTEM".yellow.bold
  puts "#{"=" * 50}\n".yellow
end

def main_menu
  clear_screen
  print_header
  
  puts "\n#{"MAIN MENU".bold}"
  puts "1. #{" Manage Books".green}"
  puts "2. #{" Manage Users".cyan}"
  puts "3. #{" Check Out Books".blue}"
  puts "4. #{" Return Books".magenta}"
  puts "0. #{" Exit".red}"
  
  print "\nChoose an option: ".yellow
  gets.chomp
end

def manage_books
  loop do
    clear_screen
    print_header
    
    puts "\n#{"MANAGE BOOKS".bold.green}"
    puts "1. #{" List all books".green}"
    puts "2. #{" Add new book".green}"
    puts "3. #{" Update number of copies".green}"
    puts "0. #{" Back to main menu".green}"
    
    print "\nChoose an option: ".yellow
    option = gets.chomp
    
    case option
    when "1"
      list_books
    when "2"
      add_book
    when "3"
      update_copies
    when "0"
      break
    else
      puts "\nInvalid option!".red
      sleep(1)
    end
  end
end

def list_books
  clear_screen
  print_header
  
  puts "\n#{"BOOK LIST".bold.green}"
  puts "\n#{"ID".ljust(5)}#{"TITLE".ljust(30)}#{"AUTHOR".ljust(20)}#{"AVAILABLE/TOTAL".ljust(15)}"
  puts "-" * 70
  
  Book.all.each do |book|
    puts "#{book.id.to_s.ljust(5)}#{book.title.ljust(30)}#{book.author.ljust(20)}#{book.available_copies}/#{book.copies}"
  end
  
  puts "\nPress ENTER to continue...".yellow
  gets
end

def add_book
  clear_screen
  print_header
  
  puts "\n#{"ADD NEW BOOK".bold.green}"
  
  print "\nTitle: ".yellow
  title = gets.chomp
  
  print "Author: ".yellow
  author = gets.chomp
  
  print "Number of copies: ".yellow
  copies = gets.chomp.to_i
  
  begin
    Book.create!(title: title, author: author, copies: copies)
    puts "\n#{"Book added successfully!".green}"
  rescue => e
    puts "\n#{"Error adding book: #{e.message}".red}"
  end
  
  puts "\nPress ENTER to continue...".yellow
  gets
end

def update_copies
  clear_screen
  print_header
  
  puts "\n#{"UPDATE NUMBER OF COPIES".bold.green}"
  
  list_books
  
  print "\nEnter book ID: ".yellow
  id = gets.chomp.to_i
  
  book = Book.find_by(id: id)
  
  if book.nil?
    puts "\n#{"Book not found!".red}"
  else
    print "\nCurrent quantity: #{book.copies}. New quantity: ".yellow
    new_copies = gets.chomp.to_i
    
    begin
      book.update!(copies: new_copies)
      puts "\n#{"Quantity updated successfully!".green}"
    rescue => e
      puts "\n#{"Error updating quantity: #{e.message}".red}"
    end
  end
  
  puts "\nPress ENTER to continue...".yellow
  gets
end

def manage_users
  loop do
    clear_screen
    print_header
    
    puts "\n#{"MANAGE USERS".bold.cyan}"
    puts "1. #{" List all users".cyan}"
    puts "2. #{" Add new user".cyan}"
    puts "3. #{" View books checked out by user".cyan}"
    puts "0. #{" Back to main menu".cyan}"
    
    print "\nChoose an option: ".yellow
    option = gets.chomp
    
    case option
    when "1"
      list_users
    when "2"
      add_user
    when "3"
      user_books
    when "0"
      break
    else
      puts "\nInvalid option!".red
      sleep(1)
    end
  end
end

def list_users
  clear_screen
  print_header
  
  puts "\n#{"USER LIST".bold.cyan}"
  puts "\n#{"ID".ljust(5)}#{"NAME".ljust(30)}#{"BOOKS CHECKED OUT".ljust(20)}"
  puts "-" * 55
  
  User.all.each do |user|
    puts "#{user.id.to_s.ljust(5)}#{user.name.ljust(30)}#{user.checked_out_books.count.to_s.ljust(20)}"
  end
  
  puts "\nPress ENTER to continue...".yellow
  gets
end

def add_user
  clear_screen
  print_header
  
  puts "\n#{"ADD NEW USER".bold.cyan}"
  
  print "\nName: ".yellow
  name = gets.chomp
  
  begin
    User.create!(name: name)
    puts "\n#{"User added successfully!".green}"
  rescue => e
    puts "\n#{"Error adding user: #{e.message}".red}"
  end
  
  puts "\nPress ENTER to continue...".yellow
  gets
end

def user_books
  clear_screen
  print_header
  
  puts "\n#{"VIEW BOOKS CHECKED OUT BY USER".bold.cyan}"
  
  list_users
  
  print "\nEnter user ID: ".yellow
  id = gets.chomp.to_i
  
  user = User.find_by(id: id)
  
  if user.nil?
    puts "\n#{"User not found!".red}"
  else
    puts "\n#{"Books checked out by #{user.name}:".bold}"
    
    if user.checked_out_books.empty?
      puts "No books checked out."
    else
      puts "\n#{"TITLE".ljust(30)}#{"AUTHOR".ljust(20)}"
      puts "-" * 50
      
      user.checked_out_books.each do |book|
        puts "#{book.title.ljust(30)}#{book.author.ljust(20)}"
      end
    end
  end
  
  puts "\nPress ENTER to continue...".yellow
  gets
end

def checkout_book
  clear_screen
  print_header
  
  puts "\n#{"CHECK OUT BOOKS".bold.blue}"
  
  list_users
  print "\nEnter user ID: ".yellow
  user_id = gets.chomp.to_i
  
  user = User.find_by(id: user_id)
  
  if user.nil?
    puts "\n#{"User not found!".red}"
  else
    list_books
    print "\nEnter book ID: ".yellow
    book_id = gets.chomp.to_i
    
    book = Book.find_by(id: book_id)
    
    if book.nil?
      puts "\n#{"Book not found!".red}"
    else
      begin
        user.checkout_book(book)
        puts "\n#{"Book checked out successfully!".green}"
      rescue => e
        puts "\n#{"Error checking out book: #{e.message}".red}"
      end
    end
  end
  
  puts "\nPress ENTER to continue...".yellow
  gets
end

def return_book
  clear_screen
  print_header
  
  puts "\n#{"RETURN BOOKS".bold.magenta}"
  
  list_users
  print "\nEnter user ID: ".yellow
  user_id = gets.chomp.to_i
  
  user = User.find_by(id: user_id)
  
  if user.nil?
    puts "\n#{"User not found!".red}"
  else
    books = user.checked_out_books
    
    if books.empty?
      puts "\n#{"This user has no books checked out.".red}"
    else
      puts "\n#{"BOOKS CHECKED OUT BY #{user.name.upcase}:".bold}"
      puts "\n#{"ID".ljust(5)}#{"TITLE".ljust(30)}#{"AUTHOR".ljust(20)}"
      puts "-" * 55
      
      books.each do |book|
        puts "#{book.id.to_s.ljust(5)}#{book.title.ljust(30)}#{book.author.ljust(20)}"
      end
      
      print "\nEnter book ID to return: ".yellow
      book_id = gets.chomp.to_i
      
      book = Book.find_by(id: book_id)
      
      if book.nil? || !books.include?(book)
        puts "\n#{"Invalid book for return!".red}"
      else
        begin
          user.return_book(book)
          puts "\n#{"Book returned successfully!".green}"
        rescue => e
          puts "\n#{"Error returning book: #{e.message}".red}"
        end
      end
    end
  end
  
  puts "\nPress ENTER to continue...".yellow
  gets
end

# Check if the colorize gem is installed
begin
  require 'colorize'
rescue LoadError
  puts "The 'colorize' gem is required for this program."
  puts "Please install it by running: gem install colorize"
  exit
end

# Main loop
loop do
  option = main_menu
  
  case option
  when "1"
    manage_books
  when "2"
    manage_users
  when "3"
    checkout_book
  when "4"
    return_book
  when "0"
    clear_screen
    puts "\n#{"Thank you for using the Library System!".green.bold}"
    puts "Exiting...\n".yellow
    break
  else
    puts "\nInvalid option!".red
    sleep(1)
  end
end