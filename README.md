# Bank_tech_test
Bank account app: 
Aim: ability to withdraw and deposit as well as see statement (with date) through irb.

Process:
added gems rspec, rubocop

Testing and formating: 
rspec --format documentation 
rubocop -A

added before hook for early tests.

IRB
require './lib/Bank_account'
account = BankAccount.new(intergers)
account.checking = total money
amount.deposit = add money
amount.withdraw = subtracts money

VERSION 1
Print as one column first

opened an account with £600"
"deposited money leaving a new balance of 800"
"withdrew money leaving a balance of 450"
"Balance is 450, with 2 transactions so far"
date       || transactons || balance
22/02/2022 || 200 || 800
22/02/2022 || 350 || 450
[["22/02/2022", 200, 800], ["22/02/2022", 350, 450]]


VERSION 2
printed as debits and credits.
withdraw debits, deposit credits.

"opened an account with £600"
"deposited money leaving a new balance of 800"
"withdrew money leaving a balance of 450"
"withdrew money leaving a balance of 200"
"Balance is 200, with 3 transactions so far"
"-----"
date       || credit || debit || balance
22/02/2022 || 0 || 250 || 200
22/02/2022 || 0 || 350 || 450
22/02/2022 || 200 || 0 || 800
[["22/02/2022", 0, 250, 200], ["22/02/2022", 0, 350, 450], ["22/02/2022", 200, 0, 800]]

@date = Time.new.strftime("%d/%m/%Y")
@date = Date.today.strftime("%d/%m/%Y")
