require 'date'

class BankAccount
   attr_reader :balance, :transactions
   
   private 
  
   public
   def initialize(initial_deposit)
      @balance = initial_deposit
      @transactions = []
      @date = Time.new.strftime("%d/%m/%Y")
   end
 
   def deposit(amount)
      @balance  += amount
      @transactions<<[@date,amount, @balance]
      @balance
   end

   def withdraw(amount)
      if amount > @balance
         p "inadequate funds"
      else 
         @balance -= amount
         @transactions<<[@date,amount, @balance]
         @balance
      end
   end

   def transactions
       @transactions
   end

   def account_info
      "Balance is #{@balance}," + " with #{@transactions.count} transactions so far"
   end


   def display
      "date       || credit || debit || balance\n"
      puts  "date       || transactons || balance\n"
      @transactions.each do |tr|
      puts tr.join(" || ") 
      end
   end
end

account = BankAccount.new(600)
p "opened an account with £600" 
p "deposited money leaving a new balance of #{account.deposit(200)}"
p "withdrew money leaving a balance of #{account.withdraw(350)}"
p account.account_info
print account.display
# p account.transactions
p "------"
# p DateTime.now
# p Date.today

# p Time.new.strftime("%d/%m/%Y")
