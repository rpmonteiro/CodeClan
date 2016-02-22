class BankAccount

  attr_accessor :holder_name, :genre, :balance

  def initialize(holder_name, balance, genre)
    @holder_name = holder_name
    @balance = balance
    @genre = genre
  end

end