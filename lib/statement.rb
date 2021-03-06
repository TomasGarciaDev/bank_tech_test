# frozen_string_literal: true

# print statement class
class Statement
  def initialize(account)
    @account = account
  end

  def print
    puts 'date || credit || debit || balance'
    @account.reverse.each do |movement|
      puts movement
    end
  end
end
