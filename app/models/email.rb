class Email < ApplicationRecord
  belongs_to :company, optional: true
  belongs_to :person, optional: true
end
