class SaleItem < ApplicationRecord
  belongs_to :sale
  validates :price, presence: true
end
