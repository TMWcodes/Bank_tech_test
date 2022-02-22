# frozen_string_literal: true

require 'Bank_account'

describe BankAccount do
   before do
    @account = BankAccount.new(600)
   end

  it 'exists' do
    expect(@account).not_to be_nil
  end
  
  it'can return a balance' do
    expect(@account.balance).to eq(600)
  end

  it'can receive monies' do
    expect(@account.deposit(300)).to eq(900)
  end 

  it'can dispense money' do
    expect(@account.withdraw(300)).to eq(300)
  end

  it'can display transcations' do
    @transactions = []
    @account.deposit(300)
    @account.withdraw(300)
    expect(@account.display).to include(@transactions)
  end
end
