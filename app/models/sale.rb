class Sale < ApplicationRecord
  has_many :sale_items, dependent: :destroy
  belongs_to :person, optional: true
  accepts_nested_attributes_for :sale_items, allow_destroy: true, reject_if: proc { |attributes|   attributes['code'].blank? }

  STATUS_CLASS = {
    :draft => "badge badge-secondary",
    :sent => "badge badge-primary",
    :paid => "badge badge-success"
    }

  def subtotal
    self.sale_items.map { |item| item.qty * item.price }.sum
  end
  
  def discount_calculated
    if self.discount == nil
      self.discount = 0
    end
    subtotal * (self.discount / 100.0)
  end
  
  def vat_calculated
    if self.vat == nil
      self.vat = 0
    end
    (subtotal - discount_calculated) * (self.vat / 100.0)
  end
  
  def total
    subtotal - discount_calculated + vat_calculated
  end
  
  def status_class
    STATUS_CLASS[self.status.to_sym]
  end
end
