require 'minitest/autorun'
require_relative 'bank_account'

class BankAccountTest < MiniTest::Unit::TestCase

  def test_check_balance
    account = BankAccount.new(100)
    assert_equal "Your balance is $100", account.check_balance 
  end

  def test_deposit
    account = BankAccount.new(100) 
    account.deposit(500) 
    assert_equal 600, account.balance
  end

  def test_withdraw
    account = BankAccount.new(700) 
    account.withdraw(600)
    assert_equal 100, account.balance
  end

  def test_transfer_to 
    account = BankAccount.new(500) 
    account.transfer_to(another_account = BankAccount.new(500), 300)
    assert_equal 800, another_account.balance
  end
  
end