class Product < ApplicationRecord
  def is_discounted?
    result = false
    result = true if price <= 300
    result
  end

  def tax
    tax = price * 0.09
    tax.round(2)
  end

  def total
    total = price + tax
    total
  end
end
