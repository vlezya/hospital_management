class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :phone, uniqueness: true

  def email_required?
    false
  end
  
  def email_changed?
    false
  end
end
