class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable and :registerable,

  devise :database_authenticatable, :recoverable, :rememberable, :validatable, :registerable
  def name
    self.email.split("@").first
  end
end
