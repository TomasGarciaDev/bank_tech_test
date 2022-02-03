# Bank Tech Test

This is a small tech test based on recreating the interaction of a client/user with his/her bank account, putting in practice my OOD and TTD skills. I have used `Rspec` to Test Drive the development on `Ruby`, and `Rubocop` and `Simplecov` for writing clean code and tests.

### Requirements

* You should be able to interact with your code via a REPL like IRB or Node. (You don't need to implement a command-line interface that takes input from STDIN).
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2023
**And** a deposit of 2000 on 13-01-2023
**And** a withdrawal of 500 on 14-01-2023
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2023 || || 500.00 || 2500.00
13/01/2023 || 2000.00 || || 3000.00
10/01/2023 || 1000.00 || || 1000.00
```

How to use
----------

### Setup


1. Fork this repo, and clone it to your local machine.
2. Run the command `gem install bundler` (if you don't have bundler already).
3. When the installation completes, run `bundle`.

### Interacting with your account

- On console write `irb -r ./lib/account.rb` to load the program.
- Create and instance of your account, e.g. `my_account = Account.new`.
- Interact with your account making deposits (e.g `my_account.deposit(500)`), withdraws (e.g `my_account.withdrawal(200)`) and printing your stamentent when needed (`my_account.statement.print`).

<img width="559" alt="Screenshot 2022-02-01 at 16 27 08" src="https://user-images.githubusercontent.com/86299300/151997758-bb4c5b1c-e199-4ae4-8c5d-4d63f174baa1.png">


Approach
----------

There are two classes:

1. `Account`, that manages `deposits` and `withdrawals` (methods), creating an automatic date for each of them. It keeps track of the `balance` and each movement `account` on two instance variables created at initialize. When we create an instance of `Account` and an instance of the class `Statement` is created by injection.

2. `Statement`, manages printing a statement with each movement and a header specifying each column.

The functionality is based on each account is created when instantiated, this allows the user to make `deposits` and `withdrawals`. The program keeps track of the movements, with the date and the type of movement. Users can print statements whenever is needed, for this, the `Account` class uses the `Statement` class by injection.
