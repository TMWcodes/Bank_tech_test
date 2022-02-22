# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  before { @account = BankAccount.new(600) }

  it 'exists' do
    expect(@account).not_to be_nil
  end

  it 'can return a balance' do
    expect(@account.balance).to eq(600)
  end

  it 'can receive monies' do
    expect(@account.deposit(300)).to eq(900)
  end

  it 'can dispense money' do
    expect(@account.withdraw(300)).to eq(300)
  end

  it 'will only depense as much money as is in the account' do
    expect(@account.withdraw(1000)).to eq('inadequate funds')
  end

  it 'can record the number of transcations' do
    @account.deposit(300)
    @account.withdraw(300)
    expect(@account.transactions.count).to eq(2)
  end

  it 'can record transactions with date and balance' do
    @account.deposit(300)
    expect(@account.transactions).to eq([['22/02/2022', 300, 0, 900]])
  end
end
