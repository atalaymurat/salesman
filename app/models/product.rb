class Product < ApplicationRecord
  mount_uploaders :pictures, ImageUploader
end
