class User < ApplicationRecord
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable and :registerable,

  devise :confirmable, :database_authenticatable, :recoverable, :rememberable, :validatable, :registerable
  def name
    self.email.split("@").first
  end
  protected
  
  def confirmation_required?
    true
  end
end
