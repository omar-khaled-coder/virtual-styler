class Preset < ApplicationRecord
  has_many :preset_items
  has_many :items, through: :preset_items
end
