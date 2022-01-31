require 'account'

describe 'Account' do
  it 'should be able to create and instance of Account' do
    expect(Account.new).to be_instance_of(Account)
  end

  it 'should return an empty bank statement when first initliazed' do
    my_account = Account.new
    expect(my_account.account).to be_nil
  end

  # it 'should allow the client to make deposits with a date' do
  #   my_account = Account.new
  #   my_account.deposit(500, "10-01-2023")
    
  #   expect(my_account.statement).to eq(statement)
  # end
end