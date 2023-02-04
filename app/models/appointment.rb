class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :user
  
  enum status: { created: 0, closed: 1 }
  
  validates :appointment_date, presence: true
end
