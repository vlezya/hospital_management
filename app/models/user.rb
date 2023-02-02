class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_and_belongs_to_many :doctors
  has_many :appointments, dependent: :destroy
  
  PHONE_NUMBER_REGEX = /\+?\d{1,4}?[-.\s]?\(?\d{1,3}?\)?[-.\s]?\d{1,4}[-.\s]?\d{1,4}[-.\s]?\d{1,9}/
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone, uniqueness: true, presence: true, length: { maximum: 15 },
                    format: { with: PHONE_NUMBER_REGEX }

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
