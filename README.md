# Bank_tech_test
Bank account app: 
Aim: ability to withdraw and deposit as well as see statement (with date) through irb.

Process:
Added gems, rspec, rubocop

Testing and formating: 
rspec --format documentation 
rubocop -A

------
VERSION 2
printed as debits and credits.
withdraw debits, deposit credits.

IRB
require './lib/Bank_account'
account = BankAccount.new(intergers)
account.checking = total money
account.deposit = add money
account.withdraw = subtracts money
account.account_info = balance and number of transactions
account.display = transactions seperated by debits and credits with the date and account balance.


date       || credit || debit || balance
22/02/2022 || 0 || 250 || 200
22/02/2022 || 0 || 350 || 450
22/02/2022 || 200 || 0 || 800
[["22/02/2022", 0, 250, 200], ["22/02/2022", 0, 350, 450], ["22/02/2022", 200, 0, 800]]

------
Methods visual
(in terminal) ruby ./lib/Bank_account.rb  

account = BankAccount.new(600)
p "opened an account with £600" 
p "deposited money leaving a new balance of #{account.deposit(200)}"
p "withdrew money leaving a balance of #{account.withdraw(350)}"
p "withdrew money leaving a balance of #{account.withdraw(250)}"
p account.account_info

"opened an account with £600"
"deposited money leaving a new balance of 800"
"withdrew money leaving a balance of 450"
"withdrew money leaving a balance of 200"
"Balance is 200, with 3 transactions so far"
"-----"