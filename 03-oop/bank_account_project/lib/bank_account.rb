require_relative 'errors'

class BankAccount
  attr_reader :owner, :balance

  def initialize(owner, balance)
    @owner = owner
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise InsufficientFundsError, "Insufficient funds" if amount >= @balance
    @balance -= amount
  end
end