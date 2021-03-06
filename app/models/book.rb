class Book < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true, numericality: true
  validates :page, presence: true, numericality: true

  def unit_with_tax
    price / page
  end
end
