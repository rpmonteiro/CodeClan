Aa

  def setup
    @account = BankAccount.new('Jay', 5000, 'business', 1234)
  end

  def test_holder_name
    assert_equal('Jay', @account.holder_name)
  end

  def test_account_amount
    assert_equal(5000, @account.balance)
  end
  
  def test_account_type
    assert_equal("business", @account.genre)
  end

  def test_set_holder_name
    @account.holder_name = "Valerie"
    assert_equal("Valerie", @account.holder_name)
  end

  def test_set_balance
    @account.balance = 100000
    assert_equal(100000, @account.balance)
  end

  def test_set_genre
    @account.genre = "personal"
    assert_equal("personal", @account.genre)
  end

  def test_sortcode
    assert_equal(1234, @account.sortcode)
  end

end