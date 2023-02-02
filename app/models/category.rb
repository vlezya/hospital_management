class Category < ApplicationRecord
  has_many :doctors, dependent: :destroy
end
