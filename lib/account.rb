class Account
  attr_reader :account
  def initialize
    @account = []
    @balance = 0
  end

  def deposit(amount, date)
    @balance += amount
    @account.push("#{date} || #{'%.2f' % amount} || || #{'%.2f' % @balance}")
  end

  def withdrawal(amount, date)
    fail 'Sorry, not enough funds' if enough_funds?(amount)
    amount <= @balance
    @balance -= amount
    @account.push("#{date} || || #{'%.2f' % amount} || #{'%.2f' % @balance}")
  end

  def statement
    header = "date || credit || debit || balance"
    statement << header

    statement
  end

  private 

  def enough_funds?(amount)
    amount > @balance
  end
end