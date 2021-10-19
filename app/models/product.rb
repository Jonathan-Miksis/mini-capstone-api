class Product < ApplicationRecord

  def is_discontinued?
    if price < 10
      p "true"
    else 
      p "false"
  end
end


end
