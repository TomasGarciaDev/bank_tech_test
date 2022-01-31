require 'account'

describe 'Account' do
  it 'should be able to create and instance of Account' do
    expect(Account.new).to be_instance_of(Account)
  end

  it 'should return an empty bank statement when first initliazed' do
    my_account = Account.new
    expect(my_account.account).to be_empty
  end
end

describe '#deposit' do
  it 'should allow the client to make deposits with a date' do
    my_account = Account.new
    my_account.deposit(1000, '10/01/2023')
    expect(my_account.account).to eq(['10/01/2023 || 1000.00 || || 1000.00'])
  end

  it 'should allow the client to make a deposits with a date' do
    my_account = Account.new
    my_account.deposit(1000, '10/01/2023')
    my_account.deposit(2000, '13/01/2023')
    expect(my_account.account).to eq(['10/01/2023 || 1000.00 || || 1000.00', '13/01/2023 || 2000.00 || || 3000.00'])
  end
end

describe '#withdrawl' do
  it 'should allow the client to make a withdrawal with a date' do
    my_account = Account.new
    my_account.deposit(1000, '10/01/2023')
    my_account.withdrawal(500, '14/01/2023')
    expect(my_account.account).to eq(['10/01/2023 || 1000.00 || || 1000.00', '14/01/2023 || || 500.00 || 500.00'])
  end

  it 'should not allow the client to make a withdrawal with a date when is no funds' do
    my_account = Account.new
    expect { my_account.withdrawal(500, '14/01/2023') }.to raise_error 'Sorry, not enough funds'
  end
end

describe '#statement' do
  it 'should allow the client to print a statement' do
    my_account = Account.new
    my_account.deposit(1000, '10/01/2023')
    my_account.deposit(2000, '13/01/2023')
    my_account.withdrawal(500, '14/01/2023')
    expect(my_account.statement).to include('date || credit || debit || balance')
    expect(my_account.statement).to include('10/01/2023 || 1000.00 || || 1000.00')
    expect(my_account.statement).to include('13/01/2023 || 2000.00 || || 3000.00')
    expect(my_account.statement).to include('14/01/2023 || || 500.00 || 2500.00')
  end
end
