require 'date'

class BankAccount
   attr_reader :balance, :transactions
   
   private 
  
   public
   def initialize(initial_deposit)
      @balance = initial_deposit
      @debit_transactions = []
      @credit_transactions = []
      @date = Time.new.strftime("%d/%m/%Y")
      @transactions = @debit_transactions+@credit_transactions
   end
 
   def deposit(amount)
      @balance  += amount
      @transactions<<[@date,amount,0, @balance]
      @balance
   end

   def withdraw(amount)
      if amount > @balance
         p "inadequate funds"
      else 
         @balance -= amount
         @transactions<<[@date,0,amount, @balance]
         @balance
      end
   end
   

   def account_info
      "Balance is #{@balance}," + " with #{(@transactions).count} transactions so far"
   end 

   def display
      puts "date       || credit || debit || balance\n"
       "date       || transactons || balance\n"
      @transactions.reverse.each do |tr|
      puts tr.join(" || ") 
      end
   end
end

p account = BankAccount.new(600)
p "opened an account with £600" 
p "deposited money leaving a new balance of #{account.deposit(200)}"
p "withdrew money leaving a balance of #{account.withdraw(350)}"
p "withdrew money leaving a balance of #{account.withdraw(250)}"
p account.account_info
p"-----"
p account.display
p "------"
