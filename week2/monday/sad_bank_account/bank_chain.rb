class BankChain

  def initialize(bank_chain)
    @bank_chain = bank_chain
  end

  def total_accounts
    total = 0
    @bank_chain.each do |bank|
      total += bank.number_of_accounts
    end
    return total
  end

  def total_cash
    total = 0
    @bank_chain.each do |bank|
      total += bank.total_cash
    end
    return total
  end

  def richest_account
  end

end