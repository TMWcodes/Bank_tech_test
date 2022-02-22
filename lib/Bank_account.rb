# frozen_string_literal: true

require 'date'
# A class representing a bank account
class BankAccount
  attr_reader :balance, :transactions

  def initialize(initial_deposit)
    @balance = initial_deposit
    @date = Time.new.strftime('%d/%m/%Y')
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
    @transactions << [@date, amount, 0, @balance]
    @balance
  end

  def withdraw(amount)
    if amount > @balance
      p 'inadequate funds'
    else
      @balance -= amount
      @transactions << [@date, 0, amount, @balance]
      @balance
    end
  end

  def account_info
    "Balance is #{@balance}," + " with #{@transactions.count} transactions so far"
  end

  def display
    puts "date       || credit || debit || balance\n"
    @transactions.reverse.each do |tr|
      puts tr.join(' || ')
    end
  end
end
