class Doctor < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  belongs_to :category
  has_and_belongs_to_many :users
  
  validates :phone, uniqueness: true
  
  def email_required?
    false
  end
  
  def email_changed?
    false
  end
  
  def will_save_change_to_email?
    false
  end
end
