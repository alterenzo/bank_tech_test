class Account
  attr_reader :balance

  def initialize
    @balance = 0
  end

  def deposit(amount)
    @statement << amount
    @balance += amount
  end

  def withdraw(amount_to_withdraw)
    fail "Insufficient funds" unless enough_money?(amount_to_withdraw)
    @balance -= amount_to_withdraw
  end

  private

  def enough_money?(amount_to_withdraw)
    @balance - amount_to_withdraw >= 0
  end
end
