# frozen_string_literal: true

require 'statement'

describe Statement do
  it 'should allow the client to print a statement' do
    date = Time.now.strftime('%d/%m/%Y')
    account = ['03/02/2022 || 1000.00 || || 1000.00', '03/02/2022 || 2000.00 || || 3000.00',
               '03/02/2022 || || 500.00 || 2500.00']
    my_account = instance_double('Account', statement: Statement.new(account))
    # my_account.deposit(1000)
    # my_account.deposit(2000)
    # my_account.withdrawal(500)
    expect(my_account.statement.print).to eq(["#{date} || || 500.00 || 2500.00", "#{date} || 2000.00 || || 3000.00",
                                              "#{date} || 1000.00 || || 1000.00"])
  end
end
