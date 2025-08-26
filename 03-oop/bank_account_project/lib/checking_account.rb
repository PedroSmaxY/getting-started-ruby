require_relative 'bank_account'
require_relative 'errors'

class CheckingAccount < BankAccount
  def initialize(owner, balance = 0, limit = 100)
    super(owner, balance)
    @limit = limit
  end

  def withdraw(amount)
    raise ArgumentError, "Withdrawal amount must be positive" if amount <= 0
    raise InsufficientFundsError, "Insufficient funds for withdrawal" if amount > @balance
    @balance -= amount
  end
end