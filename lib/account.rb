# frozen_string_literal: true

require_relative 'statement'

# client account class
class Account
  attr_reader :account, :statement

  def initialize
    @account = []
    @balance = 0
    @statement = Statement.new(@account)
  end

  def deposit(amount)
    @balance += amount
    @account.push("#{date} || #{'%.2f' % amount} || || #{format('%.2f', @balance)}")
  end

  def withdrawal(amount)
    raise 'Sorry, not enough funds' if enough_funds?(amount)

    @balance -= amount
    @account.push("#{date} || || #{'%.2f' % amount} || #{format('%.2f', @balance)}")
  end

  private

  def enough_funds?(amount)
    amount > @balance
  end

  def date
    Time.now.strftime('%d/%m/%Y')
  end
end
