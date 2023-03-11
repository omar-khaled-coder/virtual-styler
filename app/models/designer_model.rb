class DesignerModel < ApplicationRecord
  belongs_to :booking
  belongs_to :designer
  has_one_attached :model
  has_many :designer_items
end
