require_relative 'bank_account'

class SavingsAccount < BankAccount
  def add_interest(rate)
    @balance += @balance * rate
  end
end