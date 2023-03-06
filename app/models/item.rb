class Item < ApplicationRecord
  has_many :cart_items
  has_many :preset_items
  belongs_to :preset, through: :preset_items
  validates :name, presence: true, length: { maximum: 50 }
  validates :price, presence: true, numericality: { greater_than: 0 }
  validates :description, presence: true, length: { maximum: 1000 }
end
