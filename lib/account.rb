# client account class

class Account
  
  attr_reader :account
  
  def initialize
    @account = []
    @balance = 0
  end

  def deposit(amount)
    @balance += amount
    @account.push("#{date} || #{'%.2f' % amount} || || #{'%.2f' % @balance}")
  end

  def withdrawal(amount)
    raise 'Sorry, not enough funds' if enough_funds?(amount)
    
    @balance -= amount
    @account.push("#{date} || || #{'%.2f' % amount} || #{'%.2f' % @balance}")
  end

  def statement
    puts 'date || credit || debit || balance'
    @account.reverse.each do |movement|
      puts movement
    end
  end

  private

  def enough_funds?(amount)
    amount > @balance
  end

  def date
    Time.now.strftime("%d/%m/%Y")
  end
end
