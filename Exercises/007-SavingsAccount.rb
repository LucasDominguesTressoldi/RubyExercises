module SavingsAccount
  def self.interest_rate(balance)
    if balance >= 0
      if balance < 1000
        return 0.5
      elsif balance >= 1000 && balance < 5000
        return 1.621
      elsif balance >= 5000
        return 2.475
      end
    else
      return 3.213
    end
  end

  def self.annual_balance_update(balance)
    balance * (interest_rate(balance) / 100 + 1)
  end

  def self.years_before_desired_balance(current_balance, desired_balance)
    if current_balance >= desired_balance
      return 0
    end

    @years = 0
    while current_balance < desired_balance
      current_balance = annual_balance_update(current_balance)
      @years += 1
    end
    @years
  end
end
