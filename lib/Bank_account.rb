

class BankAccount
   attr_reader :checking

   private 
  
   public
   def initialize(checking_deposit)
      @checking = checking_deposit
   end

end

account = BankAccount.new(600)
p account
