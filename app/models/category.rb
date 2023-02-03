class Category < ApplicationRecord
  has_many :doctors, dependent: :destroy
  
  has_one_attached :main_image
  
  validate :acceptable_image
  validates :name, presence: true, uniqueness: true
end
