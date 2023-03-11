class DesignerItem < ApplicationRecord
  belongs_to :designer_model
  has_one_attached :image
end
