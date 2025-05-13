defmodule FreelancerRates do
  def daily_rate(hourly_rate) do
    # Please implement the daily_rate/1 function
    hourly_rate * 8.0
  end

  def apply_discount(before_discount, discount) do
    # Please implement the apply_discount/2 function
    discount_total = before_discount * (discount / 100)
    before_discount - discount_total
  end

  def monthly_rate(hourly_rate, discount) do
    # Please implement the monthly_rate/2 function
    trunc(ceil(22 * daily_rate(apply_discount(hourly_rate, discount))))
  end

  def days_in_budget(budget, hourly_rate, discount) do
    # Please implement the days_in_budget/3 function
    Float.floor((budget / daily_rate(apply_discount(hourly_rate, discount))), 1)
  end
end
