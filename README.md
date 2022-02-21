# Bank_tech_test
Bank account app: 
Aim: ability to withdraw and deposit as well as see statement (with date) through irb.

Process:
added gems rspec, rubocop


rspec --format documentation 
rubocop -A

added before hook for early tests.

IRB
require './lib/Bank_account'
account = BankAccount.new(intergers)
account.checking = total money
amount.deposit = add money
amount.withdraw = substract money
