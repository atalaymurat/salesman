class SaleItem < ApplicationRecord
  belongs_to :sale
  validates :price, presence: true
  validates :qty, presence: true
end
