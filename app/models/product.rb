class Product < ApplicationRecord
  mount_uploaders :pictures, ImageUploader
  before_create :auto_code
  belongs_to :brand 
  belongs_to :technology

  def auto_code
    new_code = "P" + Time.now.strftime('%y').to_s + 
      if Product.last.present? 
        (Product.last.id + 1).to_s
      else
        1.to_s
      end
      self.item_code = new_code
  end

  def title
    brand = self.brand.present? ? self.brand.name : ""  
    technology = self.technology.present? ? self.technology.name : "" 
    code = self.model_code.present? ? self.model_code : ""

    brand.capitalize + " " + technology.capitalize + " " + code.titleize    
  end

  def brand_name=(name)
    name = name.downcase.strip unless name.nil?
    self.brand = Brand.find_or_create_by(name: name)
  end

  def brand_name
    self.brand ? self.brand.name : nil
  end

  def technology_name=(name)
    name = name.downcase.strip unless name.nil?
    self.technology = Technology.find_or_create_by(name: name)
  end

  def technology_name
    self.technology ? self.technology.name : nil
  end
end
