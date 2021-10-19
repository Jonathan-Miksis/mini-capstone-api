class Product < ApplicationRecord

  def is_discontinued?
    if price < 10
      return true
    else 
      return false 
    end
  end

  def tax
    tax = price * 0.09
    p "Tax on product is $#{tax.round(2)}"
  end

  def total
    total = price + tax 
    p "The total cost of this product is $#{total}."
  end

end
