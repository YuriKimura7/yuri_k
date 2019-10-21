class Book < ApplicationRecord
  def unit_with_tax(price,page)
    price / page
  end
end
