# frozen_string_literal: true

require 'account'

describe Account do
  before do
    @my_account = Account.new
  end

  it 'should be able to create and instance of Account' do
    expect(@my_account).to be_instance_of(Account)
  end

  it 'should return an empty bank statement when first initliazed' do
    expect(@my_account.account).to be_empty
  end
end

describe '#deposit' do
  before do
    @my_account = Account.new
  end

  it 'should allow the client to make deposits with a date' do
    date = Time.now.strftime('%d/%m/%Y')
    @my_account.deposit(1000)
    expect(@my_account.account).to eq(["#{date} || 1000.00 || || 1000.00"])
  end

  it 'should allow the client to make a deposits with a date' do
    date = Time.now.strftime('%d/%m/%Y')
    @my_account.deposit(1000)
    @my_account.deposit(2000)
    expect(@my_account.account).to eq(["#{date} || 1000.00 || || 1000.00", "#{date} || 2000.00 || || 3000.00"])
  end
end

describe '#withdrawl' do
  before do
    @my_account = Account.new
  end

  it 'should allow the client to make a withdrawal with a date' do
    date = Time.now.strftime('%d/%m/%Y')
    @my_account.deposit(1000)
    @my_account.withdrawal(500)
    expect(@my_account.account).to eq(["#{date} || 1000.00 || || 1000.00", "#{date} || || 500.00 || 500.00"])
  end

  it 'should not allow the client to make a withdrawal with a date when is no funds' do
    expect { @my_account.withdrawal(500) }.to raise_error 'Sorry, not enough funds'
  end
end
