class Book < ApplicationRecord
  def unit_with_tax
    price / page
  end
end
