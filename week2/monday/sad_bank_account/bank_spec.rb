require("minitest/autorun")
require("minitest/rg")
require_relative("bank_account")
require_relative("bank")
require_relative("bank_chain")

class TestBankAccount < MiniTest::Test

  def setup
    @bank_account1 = BankAccount.new('Jay', 5, 'business')
    @bank_account2 = BankAccount.new('Rick', 1, 'personal')
    @bank_account3 = BankAccount.new('Tony', 20, 'business')
    @bank_account4 = BankAccount.new('Valerie', 10, 'personal')
    @bank_account5 = BankAccount.new('Simon', 3, 'personal')
    @bank_account6 = BankAccount.new('Harvey', 35, 'business')
    @bank_account7 = BankAccount.new('Sam', 6, 'personal')
    @bank_account8 = BankAccount.new('Matthew', 2, 'business')
    @bank_account9 = BankAccount.new('John', 16, 'personal')
    @bank_account10 = BankAccount.new('Smith', 20, 'business')


    bank_accounts = [ @bank_account1, @bank_account2, @bank_account3]
    more_bank_accounts = [ @bank_account4, @bank_account5, @bank_account6 ]
    even_more_bank_accounts = [ @bank_account7, @bank_account8 ]
    omg_so_many_bank_accounts = [ @bank_account9, @bank_account10 ]

    @santander = Bank.new(bank_accounts)

    ## Chain of banks
    natwest = Bank.new(more_bank_accounts)
    rbs = Bank.new(even_more_bank_accounts)
    barclays = Bank.new(omg_so_many_bank_accounts)

    group_of_banks = [natwest, rbs, barclays]

    @scotland_group = BankChain.new(group_of_banks)
  end

  def test_bank_initial_state
    assert_equal(3, @santander.number_of_accounts)
  end

  def test_bank_total_cash
    assert_equal(26, @santander.total_cash)
  end

  def test_bank_richest_account
    assert_equal(@bank_account3, @santander.richest_account)
  end

  def test_chain_banks_total_accounts
    assert_equal(7, @scotland_group.total_accounts)
  end

  def test_chain_total_cash
    assert_equal(92, @scotland_group.total_cash)
  end

  def test_chain_richest_account
    
  end

end