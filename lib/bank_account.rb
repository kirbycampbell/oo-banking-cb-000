class BankAccount
attr_reader :name
attr_accessor :status, :balance

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    self.balance += amount
  end

  def display_balance
    self.balance
  end

  def valid?
    true if @status == "open" && self.balance > 0
  end

  def close_account
    @status = "closed"
  end

end
