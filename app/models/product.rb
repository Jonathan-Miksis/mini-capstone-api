class Product < ApplicationRecord

  def is_discontinued?
    if price < 10
      p "true"
    else 
      p "false"
    end
  end

  def tax
    tax = price * 0.09
    p "Tax on product is $#{tax.round(2)}"
  end



end
