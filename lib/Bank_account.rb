

class BankAccount
   attr_reader :checking

   private 
  
   public
   def initialize(checking_deposit)
      @checking = checking_deposit
   end
   
   def deposit(amount)
      @checking  += amount
   end

   def withdraw(amount)
      if amount > @checking
         p "inadequate funds"
      else @checking -= amount
      end
   end
end

account = BankAccount.new(600)
p account.deposit(300)
p account.withdraw(300)