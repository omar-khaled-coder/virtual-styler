class Item < ApplicationRecord
  has_many :cart_items
  has_many :preset_items
  belongs_to :preset, through: :preset_items

  has_one_attached :photo
end
