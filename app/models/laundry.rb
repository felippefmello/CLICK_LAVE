class Laundry < ApplicationRecord
  belongs_to :user
  has_many :orders

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :cnpj, presence: true
  validates :price_kg, presence: true
  validates :capacity, presence: true
end
