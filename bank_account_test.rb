require 'minitest/autorun'
require_relative 'bank_account'

class BankAccountTest < MiniTest::Unit::TestCase

  def test_check_balance
    account = BankAccount.new(100)
    assert_equal "Your balance is $100", account.check_balance 
  end
  
end