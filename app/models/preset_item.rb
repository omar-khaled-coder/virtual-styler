class PresetItem < ApplicationRecord
  belongs_to :preset
  belongs_to :item
end
