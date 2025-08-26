=begin
  Examples of encapsulation in Ruby:
  - Using instance variables
  - Getter and setter methods
  - Access control: public, private
=end

puts "\nE N C A P S U L A T I O N   W I T H   C L A S S E S\n"
class BankAccount
  def initialize(owner, balance)
    @owner = owner
    @balance = balance
  end

  # Getter method
  def balance
    @balance
  end

  # Setter method
  def deposit(amount)
    @balance += amount
  end

  # Private method
  private
  def secret_code
    "1234"
  end
end

account = BankAccount.new("Pedro", 100)
puts "Owner: Pedro"
puts "Balance: #{account.balance}"

account.deposit(50)
puts "Balance after deposit: #{account.balance}"

# Trying to access private method (will cause error if uncommented)
# puts account.secret_code

# output
=begin
  E N C A P S U L A T I O N   W I T H   C L A S S E S
  Owner: Pedro
  Balance: 100
  Balance after deposit: 150
=end