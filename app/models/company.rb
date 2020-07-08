class Company < ApplicationRecord
  has_many :emails, dependent: :destroy
  has_many :sales
  accepts_nested_attributes_for :emails, allow_destroy: true, reject_if: proc { |attributes|   attributes['email'].blank? }
end
