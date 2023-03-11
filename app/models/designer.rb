class Designer < ApplicationRecord
  has_many :bookings
  has_many :designer_models

  has_one_attached :avatar
  has_many_attached :project_photos
end
