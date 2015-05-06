# Sample class account balance

class Account
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end
end

class Transaction
  def initialize(account_a, account_b)
    @account_a = account_a
    @account_b = account_b
  end

  private
  def debit(account, amount)
    account.balance -= amount
  end

  def credit(account, amount)
    account.balance += amount
  end

  public
  def transfer(amount)
    debit(@account_a, amount)
    credit(@account_b, amount)
  end
end

save = Account.new(100)
check = Account.new(200)
puts "Debit (before transaction): #{save.balance}"
puts "Credit (before transaction): #{check.balance}"
trans = Transaction.new(save, check)
x=trans.transfer(50)
puts "Debit: #{save.balance}"
puts "Credit: #{check.balance}"
