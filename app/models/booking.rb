class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :designer
  has_one :designer_model
  has_one_attached :spec_file


end
