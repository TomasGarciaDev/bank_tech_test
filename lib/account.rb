class Account
  attr_reader :account
  def initialize
    @account = []
    @balance = 0
  end

  def deposit(amount, date)
    @balance += amount
    @account.push("#{date} || #{'%.2f' % amount} || || #{'%.2f' % @balance}")
    @account
  end

  def statement
    header = "date || credit || debit || balance"
    statement << header

    statement
  end
end