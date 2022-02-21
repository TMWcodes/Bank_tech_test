# frozen_string_literal: true

require 'Bank_account'

describe BankAccount do
   before do
    account = BankAccount.new(600)
   end

  it 'exists' do
    expect(BankAccount.new(600)).not_to be_nil
  end
  
  it'can return a balance' do
    account = BankAccount.new(600)
    expect(account.checking).to eq(600)
  end

end
