# Bank Tech Test

This is a small tech test base on recreating the interaction of a client/user with his/her bank account, putting in practice my OOD and TTD skills. I have used `Rspec` to Test Drive the development on `Ruby`, and `Rubocop` and `Simplecov` for writing clean code and tests.

### Requirements

* You should be able to interact with your code via a REPL like IRB or Node. (You don't need to implement a command line interface that takes input from STDIN).
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


1. Fork this repo, and clone to your local machine.
2. Run the command `gem install bundler` (if you don't have bundler already).
3. When the installation completes, run `bundle`.

### Interacting with your account

- On console write `irb -r ./lib/account.rb` to load the program.
- Create and instance of your account, e.g. `my_account = Account.new`.
- Interact with your account makind deposits (`my_account.deposit(500)`), withdraws (`my_account.withdrawal(200)`) and printing your stamentent when needed (`my_account.statement`).

<img width="559" alt="Screenshot 2022-02-01 at 16 27 08" src="https://user-images.githubusercontent.com/86299300/151997758-bb4c5b1c-e199-4ae4-8c5d-4d63f174baa1.png">
