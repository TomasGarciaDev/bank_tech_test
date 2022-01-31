require 'account'

describe 'Account' do
  it 'should be able to create and instance of Account' do
    expect(Account.new).to be_instance_of(Account)
  end
end