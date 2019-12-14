class Product < ApplicationRecord
  mount_uploaders :pictures, ImageUploader
  before_create :auto_code

  def auto_code
    new_code = "P" + Time.now.strftime('%y').to_s + (Product.last.id + 1).to_s
      self.item_code = new_code
  end
end
