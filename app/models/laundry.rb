class Laundry < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  validates :name, presence: true, uniqueness: true
  validates :address, presence: true
  validates :image, presence: true
  validates :price_kg, presence: true
  # validates :capacity, presence: true
end
