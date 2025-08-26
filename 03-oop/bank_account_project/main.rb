require_relative 'lib/user'
require_relative 'lib/savings_account'
require_relative 'lib/checking_account'
require_relative 'lib/errors'

user = User.new("Pedro")
sa = SavingsAccount.new(user.name, 1000)
ca = CheckingAccount.new(user.name, 500)

user.add_account(sa)
user.add_account(ca)

sa.deposit(200)
sa.add_interest(0.05)

begin
  ca.withdraw(200)
rescue InsufficientFundsError => e
  puts "Insufficient Funds Error: #{e}"
rescue => e
  puts "Error: #{e}"
end

puts "Accounts for #{user.name}:"
user.accounts.each do |acc|
  puts "#{acc.class}: Balance = #{acc.balance}"
end