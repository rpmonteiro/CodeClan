class Bank

  def initialize(accounts)
    @accounts = accounts
  end

  def number_of_accounts
    return @accounts.length
  end

  def total_cash
    total = 0
    @accounts.each do |account|
      total += account.balance()
    end
    return total
  end

  def richest_account
    highest_balance = 0
    richest_account = nil

    for account in @accounts
      if account.balance > highest_balance
        highest_balance = account.balance
        richest_account = account
      end
    end
    return richest_account
  end

end