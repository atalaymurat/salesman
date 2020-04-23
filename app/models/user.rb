class User < ApplicationRecord
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable and :registerable,

  devise :confirmable, :database_authenticatable, :recoverable, :rememberable, :validatable, :registerable
  def name
    self.email.split("@").first
  end
  
  def active_for_authentication?
    super && approved?
  end

  def inactive_message
    approved? ? super : :not_approved
  end

  protected
  
  def confirmation_required?
    true
  end
end
