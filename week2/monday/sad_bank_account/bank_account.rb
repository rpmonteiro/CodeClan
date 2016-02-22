class BankAccount

  attr_accessor :holder_name, :genre, :balance, :sortcode

  def initialize(holder_name, balance, genre, sortcode)
    @holder_name = holder_name
    @balance = balance
    @genre = genre
    @sortcode = sortcode
  end

end