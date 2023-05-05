class Customer < ApplicationRecord
  validates :name, presence: true
  validates :document, :email, :mobile_phone, presence: true, uniqueness: true
end
